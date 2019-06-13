; 0 - PUSH temp 0
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 1 - PUSH temp 1
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 2 - PUSH temp 2
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $2 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 3 - PUSH temp 3
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $3 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 4 - PUSH temp 4
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $4 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 5 - PUSH temp 5
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $5 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 6 - PUSH temp 6
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $6 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 7 - PUSH temp 7
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $7 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; End
