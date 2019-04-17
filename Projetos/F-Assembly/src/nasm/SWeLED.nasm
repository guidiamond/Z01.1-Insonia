; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova



leaw $0, %A
movw %A, %S
notw %S
decw %S
movw %S, (%A)
leaw $0, %A
movw %A, %S
notw %S
leaw $15, %A
subw %S, %A, %S
leaw $1, %A
movw %S, (%A)
loop:
leaw $21185, %A
movw (%A), %D
leaw $14, %A
movw %A, %D
andw %D, %D, %D
leaw $0, %A
andw %D, (%A), %D
leaw $1, %A
orw %D, (%A), %D
leaw $21184, %A
movw %D, (%A)
leaw $loop, %A
jmp
nop