%include 'in_out.asm'
SECTION .data
msg: DB 'Введите значение x: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
; —- Вычисление выражения
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
inc eax
mov ebx,10
mul ebx
sub eax,10
mov edi,eax
; —- Вывод результата на экран
mov eax,rem
call sprint
mov eax,edi
call iprint
call quit