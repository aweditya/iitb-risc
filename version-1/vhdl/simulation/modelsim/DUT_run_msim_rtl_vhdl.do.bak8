transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/Multiplexer16bit4to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/Multiplexer3bit4to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/Multiplexer16bit2to1.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/RAM.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/BitShifter.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/Demultiplexer1to8.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/RegisterBank.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/DUT.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/SignExtender9.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/SignExtender6.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/Register2Byte.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/ALU.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/FlagRegister.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/ZeroAppender.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/Datapath.vhd}

vcom -93 -work work {/home/aditya/Projects/iitb/ee309/project-1/main/backup/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
