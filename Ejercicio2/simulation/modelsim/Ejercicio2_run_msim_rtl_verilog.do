transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/regiterInput.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/XorModule.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/ShiftRight.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/ShiftLeft.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/OrModule.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/AndModule.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/ALU.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/SumadorCompleto.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/OpSuma.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/OpMult.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/OpDiv.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/TimingAnalysisSystem.sv}
vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/registerOutput.sv}

vlog -sv -work work +incdir+D:/TEC/II\ Semestre\ 2024/Taller/Lab2/Ejercicio2 {D:/TEC/II Semestre 2024/Taller/Lab2/Ejercicio2/ALU_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  ALU_tb

add wave *
view structure
view signals
run -all
