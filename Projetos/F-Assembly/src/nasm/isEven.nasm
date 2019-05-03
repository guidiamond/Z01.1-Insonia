; Arquivo: isEven.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se o valor salvo no endereço RAM[5] é
; par. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.


; %A resultado
; %D valor inicial
; %S contador


leaw $5, %A
movw (%A), %S
leaw $1, %A
andw %S, %A, %S


leaw $1, %A
movw %A, %D

leaw %verdade, %A
je %S
nop
leaw $0, %A
movw %A, %D
verdade:
	leaw $0, %A
	movw %D, (%A)