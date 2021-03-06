# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    set ::env(RT_TMP) "./.Xil/Vivado-27842-jon-GA-MA770T-ES3/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a100tcsg324-1

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog {
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_12.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_11.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_13.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_15.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_10.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_0.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_1.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_2.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_3.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_4.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_5.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_6.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_7.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_8.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_9.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_16.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/main_14.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/user_design.v
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/chips_lib.v
    }
      rt::read_vhdl -lib xil_defaultlib {
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/serial_out.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/serial_in.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/rmii_ethernet.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/bsp.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/i2c.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/pwm.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/keyboard.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/bram.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/svga_package.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/svga_core.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/svga_timing_gen.vhd
      /home/storage/Projects/Chips-Demo/synthesis/nexys_4/clock/pwm_audio.vhd
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList ./.Xil/Vivado-27842-jon-GA-MA770T-ES3/realtime/bsp_synth.xdc
    rt::sdcChecksum
    set rt::top bsp
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
    rt::set_parameter webTalkPath {./.Xil/Vivado-27842-jon-GA-MA770T-ES3/wt}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-27842-jon-GA-MA770T-ES3/"
    if {$rt::useElabCache == false} {
      rt::run_synthesis -module $rt::top
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    if { $rt::flowresult == 1 } { return -code error }

    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
    }


    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
