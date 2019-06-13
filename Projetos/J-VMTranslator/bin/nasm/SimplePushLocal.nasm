; 0 - PUSH local 0
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 1 - PUSH local 1
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 2 - PUSH local 2
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
leaw $2 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; End
