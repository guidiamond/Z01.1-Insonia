; Arquivo: Pow.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Eleva ao quadrado o valor da RAM[1] e armazena o resultado na RAM[0].
; Só funciona com números positivos

; %A resultado
; %D valor inicial
; %S contador

leaw $1, %A ; atribuir valor 1 para A
movw (%A), %S ; atribuir ram[1] para S
movw %S, %D ; mover valor de S para D
movw %D, %A ; mover D para A
decw %S
; A S D == RAM[1]
WHILE:
	leaw $1, %A
	addw %D, (%A), %D
	decw %S
	leaw %WHILE, %A
	jg %S
nop
; adicionar o resultado a RAM[0]
leaw $0, %A
movw %D, (%A)