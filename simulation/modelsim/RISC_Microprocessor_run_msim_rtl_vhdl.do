transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/PranavaStudy/IITB/sem4/EE309-Microprocessors/Project-IITB-RISC/RISC-Microprocessor/Demultiplexer1to8.vhd}
vcom -93 -work work {D:/PranavaStudy/IITB/sem4/EE309-Microprocessors/Project-IITB-RISC/RISC-Microprocessor/Register2bit.vhd}
vcom -93 -work work {D:/PranavaStudy/IITB/sem4/EE309-Microprocessors/Project-IITB-RISC/RISC-Microprocessor/ALU.vhd}
vcom -93 -work work {D:/PranavaStudy/IITB/sem4/EE309-Microprocessors/Project-IITB-RISC/RISC-Microprocessor/RegisterBank.vhd}
vcom -93 -work work {D:/PranavaStudy/IITB/sem4/EE309-Microprocessors/Project-IITB-RISC/RISC-Microprocessor/Register2Byte.vhd}
vcom -93 -work work {D:/PranavaStudy/IITB/sem4/EE309-Microprocessors/Project-IITB-RISC/RISC-Microprocessor/DUT.vhdl}
vcom -93 -work work {D:/PranavaStudy/IITB/sem4/EE309-Microprocessors/Project-IITB-RISC/RISC-Microprocessor/Datapath.vhd}

vcom -93 -work work {D:/PranavaStudy/IITB/sem4/EE309-Microprocessors/Project-IITB-RISC/RISC-Microprocessor/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
