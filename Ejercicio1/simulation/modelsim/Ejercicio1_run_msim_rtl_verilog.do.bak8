transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/ALU.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/XOR.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/ShiftRight.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/ShiftLeft.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/OR.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/AND.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/SumadorCom.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/Suma.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/Mult.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/Div.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/dispConv.sv}

vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio1 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio1/ALU_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  ALU_tb

add wave *
view structure
view signals
run -all
