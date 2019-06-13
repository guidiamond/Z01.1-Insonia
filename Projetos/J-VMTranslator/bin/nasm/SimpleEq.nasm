; 0 - EQ
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
leaw $EQSimpleEq0, %A
je %S
nop
leaw $0, %A
movw %A, %S
leaw $EQ-ENDSimpleEq0, %A
jmp
nop
EQSimpleEq0:
leaw $65535, %A
movw %A, %S
EQ-ENDSimpleEq0:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; End
