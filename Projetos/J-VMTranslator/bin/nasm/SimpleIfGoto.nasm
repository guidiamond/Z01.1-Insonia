; 0 - PUSH constant 5
leaw $5, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH constant 15
leaw $15, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - PUSH constant 15
leaw $15, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - EQ
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
leaw $EQSimpleIfGoto0, %A
je %S
nop
leaw $0, %A
movw %A, %S
leaw $EQ-ENDSimpleIfGoto0, %A
jmp
nop
EQSimpleIfGoto0:
leaw $65535, %A
movw %A, %S
EQ-ENDSimpleIfGoto0:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 4 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
notw %D
leaw $SimpleIfGotoIF1, %A
je %D
nop
; Label (marcador)
SimpleIfGotoELSE1:
; 5 - PUSH constant 3
leaw $3, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; Label (marcador)
SimpleIfGotoIF1:
; 6 - POP temp 0
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
; 7 - PUSH constant 15
leaw $15, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 8 - PUSH constant 9
leaw $9, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 9 - EQ
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
leaw $EQSimpleIfGoto1, %A
je %S
nop
leaw $0, %A
movw %A, %S
leaw $EQ-ENDSimpleIfGoto1, %A
jmp
nop
EQSimpleIfGoto1:
leaw $65535, %A
movw %A, %S
EQ-ENDSimpleIfGoto1:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 10 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
notw %D
leaw $SimpleIfGotoIF2, %A
je %D
nop
; Label (marcador)
SimpleIfGotoELSE2:
; 11 - PUSH constant 2
leaw $2, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 12 - POP temp 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $1, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; Label (marcador)
SimpleIfGotoIF2:
; End
