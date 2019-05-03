; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!

leaw $31, %A
movw %A, %D
leaw $18504, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18524, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18544, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18564, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18584, %A
movw %D, (%A)

leaw $31, %A
movw %A, %D
leaw $18604, %A
movw %D, (%A)