
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name UPCOUNTER_4BIT -dir "D:/DOC/NH_2024_2025_HK_01/ICSL316764/UPCOUNTER_4BIT/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "UP_COUNTER_FPGA.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {UP_COUNTER_FPGA.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top UP_COUNTER_FPGA $srcset
add_files [list {UP_COUNTER_FPGA.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
