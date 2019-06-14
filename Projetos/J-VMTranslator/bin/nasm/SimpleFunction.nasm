; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 0 - Declarando função Main.main
Main.main:
; 1 - PUSH constant 1
leaw $1, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - PUSH constant 2
leaw $2, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - chamada de funcao SimpleFunction
leaw $LABEL-UNICO0, %A
movw %A, %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $LCL, %A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $ARG, %A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $THIS, %A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $THAT, %A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $7, %A
movw %A, %D
leaw $SP, %A
movw (%A), %A
subw %A, %D, %D
leaw $ARG, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
leaw $LCL, %A
movw %D, (%A)
leaw $SimpleFunction, %A
jmp
nop
LABEL-UNICO0:
; Label (marcador)
Mainloop:
; 4 - Goto Incondicional
leaw $Mainloop, %A
jmp
nop
; 5 - Declarando função SimpleFunction
SimpleFunction:
leaw $0, %A
movw %A, %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $0, %A
movw %A, %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
incw %D
movw %D, (%A)
; 6 - PUSH argument 0
leaw $0, %A
movw %A,%S
leaw $ARG,%A
movw (%A),%A
addw %A, %S, %A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - PUSH argument 1
leaw $1, %A
movw %A,%S
leaw $ARG,%A
movw (%A),%A
addw %A, %S, %A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 8 - ADD
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %S
decw %A
movw (%A), %D
addw %S, %D, %S
movw %S, (%A)
movw %A, %D
leaw $SP,%A
incw %D
movw %D, (%A)
; 9 - Retorno de função
leaw $LCL, %A
movw (%A), %D
leaw $13, %A
movw %D, (%A)
leaw $5, %A
subw %D, %A, %A
movw (%A), %D
leaw $14, %A
movw %D, (%A)
leaw $ARG, %A
movw (%A), %D
leaw $15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
leaw $15, %A
movw (%A), %A
movw %D, (%A)
leaw $ARG, %A
movw (%A), %D
leaw $SP, %A
addw %D, $1, (%A)
leaw $13, %A
subw (%A), $1, %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
leaw $THAT, %A
movw %D, (%A)
leaw $13, %A
subw (%A), $1, %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
leaw $THIS, %A
movw %D, (%A)
leaw $13, %A
subw (%A), $1, %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
leaw $ARG, %A
movw %D, (%A)
leaw $13, %A
subw (%A), $1, %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
leaw $LCL, %A
movw %D, (%A)
leaw $14, %A
movw (%A), %A
jmp
nop
; End
