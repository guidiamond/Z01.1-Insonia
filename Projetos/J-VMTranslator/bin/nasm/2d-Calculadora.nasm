; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 2 - POP local 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
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
; 4 - POP local 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; Label (marcador)
$loop.mult
; 5 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 6 - PUSH local 1
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
; 7 - EQ
if-goto $end.mult
; 8 - PUSH local 0
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
; 9 - PUSH argument 0
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
; 10 - ADD
; 11 - POP local 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 12 - PUSH local 1
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
; 13 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 14 - SUB
; 15 - POP local 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
goto $loop.mult
; Label (marcador)
$end.mult
; 16 - PUSH local 0
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
; 19 - PUSH constant 3
leaw $3,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 20 - PUSH constant 3
leaw $3,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 22 - POP temp 2
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Temp,%A
movw (%A), %D
leaw $2,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; Label (marcador)
$while.Main
goto $while.Main
; 24 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 25 - POP local 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
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
; 27 - POP local 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; Label (marcador)
$loop.pow
; 28 - PUSH argument 0
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
; 29 - PUSH argument 0
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
; 31 - PUSH local 0
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
; 32 - ADD
; 33 - POP local 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 34 - PUSH local 1
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
; 35 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 36 - SUB
; 37 - POP local 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 38 - PUSH local 1
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
; 39 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 40 - EQ
if-goto $end.pow
goto $loop.pow
; Label (marcador)
$end.pow
; 41 - PUSH local 0
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
; End
