; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 0 - Declarando função Class2.set
Class2.set:
; 1 - PUSH argument 0
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
; 2 - POP static 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $Class20,%A
movw %D,(%A)
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
; 4 - POP static 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $Class21,%A
movw %D,(%A)
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
; 6 - Retorno de função
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
; 7 - Declarando função Class2.get
Class2.get:
; 8 - PUSH static 0
leaw $Class20, %A
movw (%A),%D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 9 - PUSH static 1
leaw $Class21, %A
movw (%A),%D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - SUB
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
; 11 - Retorno de função
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
; 12 - Declarando função Main.main
Main.main:
; 13 - PUSH constant 6
leaw $6, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - PUSH constant 8
leaw $8, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 15 - chamada de funcao Class1.set
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
leaw $Class1.set, %A
jmp
nop
LABEL-UNICO0:
; 16 - POP temp 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $0, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 17 - PUSH constant 23
leaw $23, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 18 - PUSH constant 15
leaw $15, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 19 - chamada de funcao Class2.set
leaw $LABEL-UNICO1, %A
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
leaw $Class2.set, %A
jmp
nop
LABEL-UNICO1:
; 20 - POP temp 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $0, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 21 - chamada de funcao Class1.get
leaw $LABEL-UNICO2, %A
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
leaw $5, %A
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
leaw $Class1.get, %A
jmp
nop
LABEL-UNICO2:
; 22 - chamada de funcao Class2.get
leaw $LABEL-UNICO3, %A
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
leaw $5, %A
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
leaw $Class2.get, %A
jmp
nop
LABEL-UNICO3:
; Label (marcador)
SysWHILE:
; 23 - Goto Incondicional
leaw $SysWHILE, %A
jmp
nop
; 24 - Declarando função Class1.set
Class1.set:
; 25 - PUSH argument 0
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
; 26 - POP static 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $Class10,%A
movw %D,(%A)
; 27 - PUSH argument 1
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
; 28 - POP static 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $Class11,%A
movw %D,(%A)
; 29 - PUSH constant 0
leaw $0, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 30 - Retorno de função
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
; 31 - Declarando função Class1.get
Class1.get:
; 32 - PUSH static 0
leaw $Class10, %A
movw (%A),%D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 33 - PUSH static 1
leaw $Class11, %A
movw (%A),%D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 34 - SUB
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
; 35 - Retorno de função
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
