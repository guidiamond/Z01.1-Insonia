; 0 - NEG
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A),%D
negw %D
movw %D,(%A)
movw %A, %S
leaw %SP, %A
incw %S
movw %S, (%A)
; End
