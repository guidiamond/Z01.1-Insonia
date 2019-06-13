; 0 - POP pointer 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $THIS,%A
movw %D, (%A)
; 1 - POP pointer 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $THAT,%A
movw %D, (%A)
; End
