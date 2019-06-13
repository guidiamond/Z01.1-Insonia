; 0 - GT
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
leaw $GTSimpleGt0, %A
jg %S
nop
leaw $0, %A
movw %A, %S
leaw $GT-ENDSimpleGt0, %A
jmp
nop
GTSimpleGt0:
leaw $65535, %A
movw %A, %S
GT-ENDSimpleGt0:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; End
