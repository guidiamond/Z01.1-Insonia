; 0 - OR
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %S
decw %A
movw (%A), %D
orw %D, %S, %S
movw %S, (%A)
movw %A, %D
leaw $SP,%A
incw %D
movw %D, (%A)
; End
