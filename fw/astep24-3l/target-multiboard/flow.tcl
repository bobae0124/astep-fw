#!/usr/bin/tclsh

# This script creates Vivado projects and bitfiles for the supported hardware platforms

## This method used to generate a Date version for RFG, so that SW can read a build version to easily check which firmware is flashed
proc getDateVersion args {
    set date [clock seconds]
    return   [clock format $date -format "%y%m%d"]01   
}

# Get project file dir
variable myLocation [file normalize [info script]]
proc getResourceDirectory {} {
    variable myLocation
    return [file dirname $myLocation]
}

## Directories
global firmware_dir
set firmware_dir [getResourceDirectory]
puts "Firware directory: $firmware_dir"

set commonSrcDir $::env(BASE)/fw/common
set astep3lSrcDir [file normalize $firmware_dir/../]

set include_dirs [list $firmware_dir/src $commonSrcDir/includes]

file mkdir reports
file mkdir bitstreams

proc add_files_no_simulation path {
    if {[file isdirectory $path]} {
        set addedFiles  [add_files -norecurse $path]
    } else {
        read_verilog    $path
        set addedFiles  [list $path]
    }
    if {[llength [get_files $addedFiles]]>0} {
        set_property -dict {used_in_synthesis true used_in_simulation true used_in_implementation true} [get_files $addedFiles]
    }
    
    
}
proc read_design_files {} {

    global firmware_dir
    global commonSrcDir
    global astep3lSrcDir

    add_files_no_simulation $firmware_dir/astep24_3l_multitarget_top.v
    
    add_files_no_simulation $astep3lSrcDir/common

    add_files_no_simulation $commonSrcDir/rtl/host
    add_files_no_simulation $commonSrcDir/rtl/host/sw_dual_spi_uart
    add_files_no_simulation $commonSrcDir/rtl/rfg/protocol
    add_files_no_simulation $commonSrcDir/rtl/rfg/spi

    add_files_no_simulation $commonSrcDir/rtl/housekeeping/
    add_files_no_simulation $commonSrcDir/rtl/layers/
    add_files_no_simulation $commonSrcDir/rtl/spi/

    add_files_no_simulation $commonSrcDir/rtl/asic_model/

    add_files_no_simulation $commonSrcDir/rtl/utilities/
}

proc read_syn_ip {} {

    puts "Read and Synth IP"
    global firmware_dir
    global commonSrcDir
    global astep3lSrcDir

    ## Go through IP directories from IP project and load all the XCI files found
    foreach ipDir [glob -nocomplain -type d $commonSrcDir/xilinx-ip/*] {
        set ipPath $ipDir/[file tail $ipDir].xci
        if {[file exists $ipPath]} {
            set ip [import_ip $ipPath]
            set_property generate_synth_checkpoint true [get_files $ip]
        }
    }
    #synth_ip [get_ips]
}


proc run_bit {board version defines constraints_file} {

    global defines_list
    global chipversion
    global include_dirs
    global firmware_dir
    global commonSrcDir
    global astep3lSrcDir

    ## Test if in open mode, if env(OPEN) is NOT set, catch returns 1
    set openMode [expr [catch {set ::env(OPEN)}] == 1 ? 0 : 1]
    set supported_chipversions [list 2 3]
    set supported_defines [list CLOCK_SE_SE CLOCK_SE_DIFF CONFIG_SE TELESCOPE SINGLE_LAYER]

    ## Check chip version
    if {$version in $supported_chipversions} {
        set chipversion $version
        puts "INFO: Valid chipversion $chipversion specified!"
    } else {
        puts "ERROR: Invalid chipversion $version specified!"
        return -level 1 -code error
    }

    
    #array set supported_boards [subst {
    #    {astropix-nexys  {xc7a200tsbg484-1 digilentinc.com:nexys_video:part0:1.2 {RFG_FW_ID=32'h0000AB0${chipversion}} } }
    #    {astropix-cmod   {xc7a35tcpg236-1  digilentinc.com:cmod_a7-35t:part0:1.2 {RFG_FW_ID=32'h0000AC0${chipversion}} } }
    #}]
    array set supported_boards [list \
        astropix-nexys  [list xc7a200tsbg484-1 digilentinc.com:nexys_video:part0:1.2 [list RFG_FW_ID=32'h0000AB0${chipversion}] ] \
        astropix-cmod   [list xc7a35tcpg236-1  digilentinc.com:cmod_a7-35t:part0:1.2 [list RFG_FW_ID=32'h0000AC0${chipversion}] ] \
    ]


    if {[info exists supported_boards($board)]} {
        set part           [lindex $supported_boards($board)  0]
        set board_name     [lindex $supported_boards($board)  1]
        ## Board defines are added to project after main project defines
        set board_defines  [lindex $supported_boards($board)  2]
        
    } else {
        puts "ERROR: Unsupported board $board specified!"
        return -level 1 -code error
    }

    

    foreach item $defines {
        if {$item ni $supported_defines} {
            puts "ERROR: Invalid define $item specified! Valid defines are: $supported_defines"
            return -level 1 -code error
        }
    }

    if {("CLOCK_SE_SE" in $defines) && ("CLOCK_SE_DIFF" in $defines)} {
        puts "ERROR: CLOCK_SE cannot be both single-ended and differential"
        return -level 1 -code error
    } else {
        puts "INFO: CLOCK_SE config valid!"
    }

    if {"TELESCOPE" in $defines} {
        puts "INFO: Configured for telescope setup!"
    } else {
        puts "INFO: Not configured for telescope setup!"
    }

    set defines_list $defines
    puts "INFO: Set verilog defines $defines_list"

    set defines_string [join $defines _]
    append design_name "$board\_$chipversion\_$defines_string"

    ## Project Creation
    ############

    # Close project if opened, helps resourcing the script from active vivado
    catch {close_project}

    # Set board file
    set_param board.repoPaths $::env(BASE)/vendor/digilent-vivado-boards/board_files
    set REPOPATH [get_param board.repoPaths]
    puts $REPOPATH

    # Start Flow
    ## Create Project: in Open mode, try to reopen existing project
    if {$openMode && [file exists vivado-project/${design_name}.xpr]} {
        puts "INFO: Reopening project, to recreate delete this file: vivado-project/${design_name}.xpr"
        open_project vivado-project/${design_name}.xpr
    } else {
        create_project -force -part $part $design_name vivado-project
        set_property board_part $board_name [current_project]
    }
    

    read_design_files
    read_syn_ip

    ## TCL constraints
    ###############
    #lappend constraints_file $astep3lSrcDir/common/astep24_3layers_constraints.xdc.tcl

    ## If we are in OPEN mode, Vivado GUI will start various steps in new processes, which causes Configurations used in constraints to be not available
    ## In OPEN mode, we are then writing the important configs to a new constraints file that will be loaded first
    if {$openMode} {
        set   openConstraintsFile   ".openMode.xdc.tcl"
        set   out                   [open $openConstraintsFile w+]

        puts  $out "global chipversion"
        puts  $out "global defines_list"
        puts  $out [subst {set chipversion $chipversion}]
        puts  $out [subst -nocommand {set defines_list [list $defines_list]}]
        close $out 

        set constraints_file [concat [file normalize $openConstraintsFile] $constraints_file]
    }

    # Read constraints
    read_xdc -unmanaged $constraints_file

    # If a TCL file ends with "_impl.tcl", it is used only in implementation
    foreach constraintFile $constraints_file {
        if {[string match "*_impl.tcl" $constraintFile]} {
                set_property -dict {used_in_synthesis false used_in_simulation false used_in_implementation true} [get_files  $constraintFile]
        }
    }

    # Set Defines and inc dirs: Config defines + Board specific static defines + Dynamically created build version    
    #########
    set buildVersion  [getDateVersion]
    set final_defines [lsort [concat $board_defines $defines_list RFG_FW_BUILD=32'd$buildVersion SYNTHESIS=1 ASTROPIX${chipversion}]]
    puts "Final Defines: $final_defines"

    foreach fileSet [list [current_fileset] [get_fileset sim_1]] {
        set_property verilog_define $final_defines $fileSet
        set_property include_dirs   $include_dirs  $fileSet
    }
    

    ## Only Run Implementatino if no project opening is requested
    if {!$openMode} {
        #generate_target -verbose -force all [get_ips]
        synth_ip [get_ips]
        synth_design -top astep24_3l_multitarget_top
        opt_design
        place_design
        phys_opt_design
        route_design
        report_utilization -file "reports/report_utilization.$design_name.log"
        report_timing      -file "reports/report_timing.$design_name.log"

        set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design] 
        write_bitstream -force -bin_file bitstreams/${design_name}_${buildVersion} 
        write_cfgmem  -format mcs -size 32 -interface SPIx4 -loadbit [list up 0x00000000 bitstreams/${design_name}_${buildVersion}.bit  ] -file bitstreams/${design_name}_${buildVersion}.mcs
        close_project
    }

    
}
