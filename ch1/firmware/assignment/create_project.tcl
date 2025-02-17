# Create a new project
create_project -force riscv_project ./vivado_project -part xc7z020clg400-1

# Add RTL files
add_files {./hdl/riscv_core.vhd ./hdl/imem.vhd ./hdl/dmem.vhd}

# Add testbench files
add_files -fileset sim_1 {./tb/basicIO_model.vhd ./tb/riscv_tb.vhd}

# Set the top module for simulation
set_property top riscv_tb [get_filesets sim_1]

# Run synthesis and simulation
launch_simulation