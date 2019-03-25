; Arquivo: Pow.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Eleva ao quadrado o valor da RAM[1] e armazena o resultado na RAM[0].
; Só funciona com números positivos

leaw $R1,%A
movw (%A),%D

leaw $R0,%A
movw %D,(%A)

LOOP:
decw %D

leaw $END,%A
je %D
nop

leaw $R2,%A
movw %D,(%A)

leaw $R1,%A
movw (%A),%D

leaw $R0,%A
addw (%A), %D, %D
movw %D, (%A)

leaw $R2,%A
movw (%A),%D

leaw $LOOP,%A
jmp
nop

END:
leaw $END,%A
jmp
nop
