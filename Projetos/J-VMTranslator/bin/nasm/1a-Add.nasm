; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 123
leaw $123,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 2 - PUSH constant 23
leaw $23,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 3 - ADD
; Label (marcador)
$while.Main
goto $while.Main
; End
