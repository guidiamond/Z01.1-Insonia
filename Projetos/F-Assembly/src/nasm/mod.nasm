; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide o número posicionado na RAM[1] pelo número posicionado no RAM[2] e armazena o resto na RAM[0].


leaw $1, %A
movw (%A), %D
loop_div:
leaw $2, %A
subw %D, (%A), %D
leaw $loop_div, %A
jge %D
nop
leaw $2, %A
addw %D, (%A), %D
leaw $0, %A
movw %D, (%A)