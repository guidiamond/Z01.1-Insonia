; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova



leaw $1022, %A
movw %A, %D
leaw $14, %A
notw %A
movw %A, %S
andw %D, %S, %S
leaw %21185, %A
orw (%A), %S, %D
leaw $1022, %A
andw %D, %A, %D
notw %D
leaw $1008, %A
orw %D, %A, %D
leaw $1022, %A
andw %A, %D, %D
leaw $21184, %A
movw %D, (%A)