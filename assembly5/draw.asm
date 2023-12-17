xor ax, ax
mov es, ax
mov ds, ax
mov ss, ax

mov al, 0x13
int 0x10

;Int 10h, 0Ch            Write Pixel
;
;    Writes a pixel dot of a specified color at a specified screen
;    coordinate.
;
;        Entry   AH = 0Ch
;                AL = Pixel color
;                CX = Horizontal position of pixel (X)
;                DX = Vertical position of pixel (Y)
;                BH = Display page number (graphics modes with more
;                     than 1 page)
;
;        Return  Nothing

mov ah, 0x0c
mov al, 0x0f
mov bh, 0
xor cx, cx
xor dx, dx

aqui:
int 0x10
inc cx
cmp cx, 319
jl aqui

aqui1:
int 0x10
inc dx
cmp dx, 199
jl aqui1

xor cx, cx
mov dx, 199
aqui2:
int 0x10
inc cx
cmp cx, 319
jl aqui2

xor cx, cx
xor dx, dx
aqui3:
int 0x10
inc dx
cmp dx, 199
jl aqui3

jmp $

times 510 - ($ - $$) db 0
dw 0xaa55 
