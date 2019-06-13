; 0 - POP local 0
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
; 1 - POP local 1
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
; 2 - POP local 2
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $2, %A
movw %A,%S
leaw $LCL,%A
movw (%A),%A
addw %A, %S, %A
movw %D, (%A)
; End
