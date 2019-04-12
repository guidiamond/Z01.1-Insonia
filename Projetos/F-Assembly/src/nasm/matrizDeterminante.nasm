; Arquivo: matrizDeterminante.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 03/2019
;
; Calcula o determinante de uma matriz 2x2 (RAM[1000]) e
;  salva seu resultado no endereço RAM[0]
;
; Calcula o determinante de uma matriz 2x2 (RAM[1000]) na forma
; [ a0, a1 ]
; [ b0, b1 ]
;
; Salva o resultado no endereço RAM[0]
;
; A matriz é salva na memória da seguinte maneira:
; RAM[1000] = a0
; RAM[1001] = a1
; RAM[1003] = b0
; RAM[1004] = b1

