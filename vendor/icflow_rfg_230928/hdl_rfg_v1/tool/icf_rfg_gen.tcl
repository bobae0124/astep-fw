package require icflow::rfg 


icInfo "Generating RFG using config from [lindex $argv 0]"

set registersFile [lindex $argv 0]
if {![file exists $registersFile]} {
    icError "RFG Script containing registers doesn't exist: $registersFile"
} else {

    ## Source Registers
    set registers [source $registersFile]

    ## Generate locally
    icCheckGVariable IC_RFG_NAME
    icCheckGVariable IC_RFG_TARGET
    if {[icCheckHasErrors]} {
        exit -1
    }

    #set ::IC_RFG_NAME $name
    set targetFile "./${::IC_RFG_NAME}.sv"
    ::icflow::rfg::generate               $registers $targetFile
    ::icflow::rfg::generatePythonPackage  $registers ${::IC_FSP_OUTPUTS}/${::IC_RFG_TARGET}

}

