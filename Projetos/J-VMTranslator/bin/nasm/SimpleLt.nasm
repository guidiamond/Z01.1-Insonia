; 0 - LT
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
leaw $LTSimpleLt0, %A
jl %S
nop
leaw $0, %A
movw %A, %S
leaw $LT-ENDSimpleLt0, %A
jmp
nop
LTSimpleLt0:
leaw $65535, %A
movw %A, %S
LT-ENDSimpleLt0:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; End
