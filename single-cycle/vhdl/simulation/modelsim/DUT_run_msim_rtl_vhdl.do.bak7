transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/Multiplexer16bit4to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/BitShifter.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/SignExtender9.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/Multiplexer3bit4to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/SignExtender6.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/Multiplexer3bit2to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/FlagRegister.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/ZeroAppender.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/Multiplexer16bit2to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/ALU.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/RAM.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/ROM.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/DUT.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/RegisterBank.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/SingleCycleDatapath.vhd}

vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-2/single-cycle/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
