; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

leaw $0, %A
movw %A, %S
leaw $1, %A
movw (%A), %D
loop:
leaw $0, %A
addw (%A), %S, %S
decw %D
leaw $loop, %A
jne %D
nop
leaw $3, %A
movw %S, (%A)