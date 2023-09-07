mov bx, 0
mov ah, 0x0e

mov al, '1'
int 0x10

mov al, segredo
int 0x10
;Apareceu? acho que não

mov al, '2'
int 0x10

mov al, [segredo]
int 0x10
;apareceu? será?

mov al, '3'
int 0x10

mov bx, segredo
add bx, 0x7c00
mov al, [bx]
xor bx, bx
int 0x10
;Agora apareceu?

mov al, '4'
int 0x10

mov al, [0x7c30]
int 0x10
;E agora?

jmp $

segredo: db 'X'
times 510 - ($ - $$) db 0
dw 0xAA55
