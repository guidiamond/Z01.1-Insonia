; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
;  Encontra o resto da divisão entre RAM[0] e RAM[1] e o salva em RAM[2].

leaw $0, %A
movw (%A), %S
movw %S, %D

WHILE:
leaw $END, %A
jl %D
nop

leaw $ENDD, %A
je %D
nop

movw %D, %S
leaw $1, %A
subw %S, (%A), %D
leaw $WHILE, %A
jmp
nop

END:
leaw $2, %A
movw %S, (%A)
leaw $ENDEND, %A
jmp
nop

ENDD:
movw %D, %S
leaw $2, %A
movw %S, (%A)
leaw $ENDEND, %A
jmp
nop

ENDEND: