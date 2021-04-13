
set my_dir [file dirname [info script]]
set origin_dir $my_dir/../

open_project $origin_dir/vivado_project/vivado_project.xpr
remove_files [get_files bd_fpga.bd]
add_files $origin_dir/verilog/vsrc/bd_fpga/bd_fpga.bd
make_wrapper -files [get_files bd_fpga.bd] -top
add_files $origin_dir/verilog/vsrc/bd_fpga/hdl/bd_fpga_wrapper.v
set_property source_mgmt_mode All [current_project]
close_project
