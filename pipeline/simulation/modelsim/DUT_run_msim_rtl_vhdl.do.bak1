transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/ForwardingUnit.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/IF_ID_reg.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/OR_EX_reg.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/EX_MEM_reg.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/ID_OR_reg.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/Pipeline.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/MEM_WB_reg.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/Multiplexer16bit4to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/RAM.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/BitShifter.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/RegisterBank.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/DUT.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/SignExtender9.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/Multiplexer3bit4to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/SignExtender6.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/Multiplexer3bit2to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/ROM.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/ALU.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/FlagRegister.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/ZeroAppender.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/Multiplexer16bit2to1.vhd}

vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/pipeline/vhdl/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
