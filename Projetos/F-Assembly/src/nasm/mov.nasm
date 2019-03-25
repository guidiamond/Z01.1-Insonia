; Elementos de Sistemas : 2018a
; Rafael Corsi
; Hardware : Z0.1
;
; Data :
;    - Dez 2018
; Descrição :
;    - Movimentação de dados da memoria RAM
;
; RAM[0] = RAM[1]
; RAM[1] = RAM[0]
; RAM[3] = 1

; -----------------------
; RAM[0] = RAM[1]
; -----------------------
  leaw $0, %A
  movw (%A), %D 
  leaw %1, %A
  movw (%A), %S

  movw %D, (%A)
  leaw $0, %A
  movw %S, (%A)

; -----------------------
; RAM[3] = 1
; -----------------------
  leaw $3, %A
  movw $1, %D
  movw %D, (%A)
