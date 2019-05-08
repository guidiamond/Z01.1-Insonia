onerror {quit -code 1}
source "/home/borg/Documents/Z01.1-Insonia/Projetos/G-Computador/vunit_out/test_output/lib.tb_controlunit.all_a75fe8e1779f6a1f2b60e6ef62d1d0adf3793143/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
