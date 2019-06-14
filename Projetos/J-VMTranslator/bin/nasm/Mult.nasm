; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 0 - Declarando função mult
mult:
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
; 1 - PUSH constant 0
leaw $0, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - POP local 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $0, %A
movw %A,%S
leaw $LCL,%A
movw (%A),%A
addw %A, %S, %A
movw %D, (%A)
; 3 - PUSH argument 1
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
; 4 - POP local 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $1, %A
movw %A,%S
leaw $LCL,%A
movw (%A),%A
addw %A, %S, %A
movw %D, (%A)
; Label (marcador)
multloop:
; 5 - PUSH constant 0
leaw $0, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 6 - PUSH local 1
leaw $1, %A
movw %A,%S
leaw $LCL,%A
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
; 7 - EQ
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $EQmult0, %A
je %S
nop
leaw $0, %A
movw %A, %S
leaw $EQ-ENDmult0, %A
jmp
nop
EQmult0:
leaw $65535, %A
movw %A, %S
EQ-ENDmult0:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 8 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
notw %D
leaw $multend, %A
je %D
nop
; 9 - PUSH local 0
leaw $0, %A
movw %A,%S
leaw $LCL,%A
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
; 10 - PUSH argument 0
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
; 11 - ADD
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
; 12 - POP local 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $0, %A
movw %A,%S
leaw $LCL,%A
movw (%A),%A
addw %A, %S, %A
movw %D, (%A)
; 13 - PUSH local 1
leaw $1, %A
movw %A,%S
leaw $LCL,%A
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
; 14 - PUSH constant 1
leaw $1, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 15 - SUB
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %S
decw %A
movw (%A), %D
subw %D, %S, %S
movw %S, (%A)
movw %A, %D
leaw $SP,%A
incw %D
movw %D, (%A)
; 16 - POP local 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $1, %A
movw %A,%S
leaw $LCL,%A
movw (%A),%A
addw %A, %S, %A
movw %D, (%A)
; 17 - Goto Incondicional
leaw $multloop, %A
jmp
nop
; Label (marcador)
multend:
; 18 - PUSH local 0
leaw $0, %A
movw %A,%S
leaw $LCL,%A
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
; 19 - Retorno de função
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
; 20 - Declarando função Main.main
Main.main:
; 21 - PUSH constant 7
leaw $7, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 22 - PUSH constant 2
leaw $2, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 23 - ADD
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
; 24 - PUSH constant 3
leaw $3, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 25 - chamada de funcao mult
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
leaw $mult, %A
jmp
nop
LABEL-UNICO0:
; Label (marcador)
MainEND:
; 26 - Goto Incondicional
leaw $MainEND, %A
jmp
nop
; End
