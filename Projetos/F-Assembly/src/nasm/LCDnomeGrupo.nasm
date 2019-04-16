; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo

leaw $31, %A
movw %A, %D
leaw $18504, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18524, %A
movw %D, (%A)

leaw $408, %A
movw %A, %D
leaw $18525, %A
movw %D, (%A)

leaw $2048, %A
movw %A, %D
leaw $18526, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18544, %A
movw %D, (%A)

leaw $29221, %A
movw %A, %D
leaw $18545, %A
movw %D, (%A

leaw $49536, %A
movw %A, %D
leaw $18546, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18564, %A
movw %D, (%A)

leaw $18725, %A
movw %A, %D
leaw $18565, %A
movw %D, (%A)

leaw $10816, %A
movw %A, %D
leaw $18566, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18584, %A
movw %D, (%A)

leaw $18517, %A
movw %A, %D
leaw $18585, %A
movw %D, (%A)

leaw $10848, %A
movw %A, %D
leaw $18586, %A
movw %D, (%A)

leaw $31, %A
movw %A, %D
leaw $18604, %A
movw %D, (%A)

leaw $19225, %A
movw %A, %D
leaw $18605, %A
movw %D, (%A)

leaw $10672, %A
movw %A, %D
leaw $18606, %A
movw %D, (%A)