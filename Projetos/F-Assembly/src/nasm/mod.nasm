; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide o número posicionado na RAM[1] pelo número posicionado no RAM[2] e armazena o resultado na RAM[0].

leaw $R0,%A
movw $0,(%A)
leaw $R2,%A
movw (%A), %D ;valor no RAM[2] que será dividido
leaw $END,%A
je %D ;caso D seja igual a zero pula para o loop infinito
nop
leaw $R1,%A
movw (%A), %D ; valor no RAM[1] que será dividido
LOOP:
leaw $R2,%A
subw %D,(%A),%D  ; D = M[1]-M[2]
leaw $END,%A
jl  %D ;caso D seja igual a zero pula para o loop infinito
nop
leaw $R0,%A
movw %D, (%A)
leaw $LOOP,%A
jmp
nop
END:
leaw $END,%A ; loop infinito para parar
jmp
nop
