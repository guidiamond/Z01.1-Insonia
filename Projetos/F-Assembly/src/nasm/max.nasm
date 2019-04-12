; Arquivo: Max.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares 
; Data: 27/03/2017
; Log :
;     - Rafael Corsi portado para Z01

; Calcula R2 = max(R0, R1)  (R0,R1,R2 se referem a  RAM[0],RAM[1],RAM[2])
; ou seja, o maior valor que estiver, ou em R0 ou R1 sera copiado para R2

; Estamos considerando números inteiros

leaw $0, %A
movw (%A), %S
leaw $1, %A
subw (%A), %S, %D
leaw $12, %A
jge %D
nop
leaw $2, %A
movw %S, (%A)
leaw $16, %A
jmp
nop
leaw $1, %A
movw (%A), %S
leaw $2, %A
movw %S, (%A)
nop
