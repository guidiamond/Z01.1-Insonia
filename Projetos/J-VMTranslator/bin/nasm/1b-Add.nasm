; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 5
leaw $5,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 2 - PUSH constant 9
leaw $9,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 3 - ADD
; 4 - POP temp 0
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
$while.Main
goto $while.Main
; End
