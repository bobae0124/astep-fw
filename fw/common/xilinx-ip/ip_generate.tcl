

## Create Project
set_param board.repoPaths $env(BASE)/vendor/digilent-vivado-boards/board_files/

catch {close_project}
create_project -ip -force managed_ip_project managed_ip_project 
set_property BOARD_PART digilentinc.com:nexys_video:part0:1.2 [current_project]

## Add ips
## Go through IP directories from IP project and load all the XCI files found
foreach ipDir [glob -type d *] {
    set ipPath $ipDir/[file tail $ipDir].xci
    if {[file exists $ipPath]} {
        #import_ip $ipPath
        read_ip $ipPath
    }
}
foreach ipFile [get_files *.xci] {
    
    
    set ipName [get_property IP_TOP [get_files $ipFile]]

    puts "Generating $ipFile"
    puts "IP Name: $ipName"
     
    generate_target all [get_files  $ipFile]
    set_property generate_synth_checkpoint true [get_files $ipFile]

    

    #catch { config_ip_cache -export [get_ips -all $ipName] }
    #export_ip_user_files -of_objects [get_ips $ipName] -reset -no_script \
    #    -ipstatic_source_dir outputs \
    #    -ip_user_files_dir outputs
    #export_ip_user_files -of_objects [get_ips $ipName] -no_script \
    #    -ipstatic_source_dir outputs \
    #    -ip_user_files_dir outputs
    #export_ip_user_files -of_objects [get_files $ipFile] -ip_user_files_dir outputs -no_script -sync -force
    #create_ip_run -force  [get_ips $ipName]
   
    synth_ip [get_ips $ipName] -quiet -force

    #catch {launch_runs ${ipName}_synth_1 -jobs 8}

    
    #export_simulation -of_objects [get_files $ipFile] -directory ip_user_files/sim_scripts -ip_user_files_dir ip_user_files -ipstatic_source_dir ip_user_files/ipstatic -use_ip_compiled_libs -force -quiet

}
#synth_ip