; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH argument 0
leaw $SP, %A
movw (%A), %S
leaw $ARG, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 2 - POP static 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Static,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 3 - PUSH argument 1
leaw $SP, %A
movw (%A), %S
leaw $ARG, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 4 - POP static 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Static,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 5 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 8 - PUSH static 0
leaw $SP, %A
movw (%A), %S
leaw $Static, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 9 - PUSH static 1
leaw $SP, %A
movw (%A), %S
leaw $Static, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 10 - SUB
; 13 - PUSH constant 6
leaw $6,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 14 - PUSH constant 8
leaw $8,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 16 - POP temp 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Temp,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 17 - PUSH constant 23
leaw $23,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 18 - PUSH constant 15
leaw $15,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 20 - POP temp 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Temp,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; Label (marcador)
$WHILE.Sys
goto $WHILE.Sys
; 24 - PUSH argument 0
leaw $SP, %A
movw (%A), %S
leaw $ARG, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 25 - POP static 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Static,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 26 - PUSH argument 1
leaw $SP, %A
movw (%A), %S
leaw $ARG, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 27 - POP static 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Static,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 28 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 31 - PUSH static 0
leaw $SP, %A
movw (%A), %S
leaw $Static, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 32 - PUSH static 1
leaw $SP, %A
movw (%A), %S
leaw $Static, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 33 - SUB
; End
