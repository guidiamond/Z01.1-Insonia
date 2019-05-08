onerror {quit -code 1}
source "/home/borg/Documents/Z01.1-Insonia/Projetos/G-Computador/vunit_out/test_output/lib.tb_memoryio.all_693188ce223cc7c1fc8926d3961549e052c55f8a/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
