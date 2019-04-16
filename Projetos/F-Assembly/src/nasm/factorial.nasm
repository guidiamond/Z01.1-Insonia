; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em (R0) e armazena o valor em (R1).

leaw $0, %A
movw (%A), %S
decw %S
leaw $n_dif_0
jge %S;
nop
leaw $1, %A
movw %A, %D
movw %D, (%A)
leaw $fim, %A
jmp
nop
n_dif_0:
incw %S
leaw $0, %A
movw %A, %D
leaw $2, %A
movw %S, (%A)
decw %S
loop_sub:
movw %S, (%A)
loop_mult:
leaw $0, %A
addw %D, (%A), %D
decw %S
leaw $loop_mult, %A
jg %S
nop
leaw $2, %A
movw (%A), %S
decw %S
movw %S, (%A)
leaw $0, %A
movw %D, (%A)
movw %A, %D
leaw $loop_sub, %A
jg %S
nop
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)
fim: