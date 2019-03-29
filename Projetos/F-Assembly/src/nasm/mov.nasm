; ####################################################################
; Arquivo: mov.nasm
; Rafael Corsi
; Data: Dez 2018
;
; Movimentação de dados da memoria RAM.
; Troca o valor que está salvo em RAM[1] com RAM[0] e salva 1 em RAM[3]
;
; temp   = RAM[1]
; RAM[1] = RAM[0]
; RAM[0] = temp
; RAM[3] = 1
; ####################################################################
leaw $0, %A
movw (%A), %S
leaw $1, %A
movw (%A), %D
movw %S, (%A)
leaw $0, %A
movw %D, (%A)
leaw $3, %A
movw $1, (%A)