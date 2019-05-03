; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe um quadro no LCD
;  - Valide no hardawre
;  - Bata uma foto!


leaw $31, %A
movw %A, %D
leaw 18384 %A
movw %D, (%A)
leaw 18404 %A
movw %D, (%A)
leaw 18424 %A
movw %D, (%A)
leaw 18444 %A
movw %D, (%A)
leaw 18464 %A
movw %D, (%A)