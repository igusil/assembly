;zerar registradores de segmento
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
;                CX = Horizontal position of pixel
;                DX = Vertical position of pixel
;                BH = Display page number (graphics modes with more
;                     than 1 page)
;
;        Return  Nothing

mov ah, 0x0c
mov al, 0x0f
;124
mov cx, 0x7c
;69
mov dx, 0x45
mov bh, 0

int 0x10

;131
mov cx, 131
;69
mov dx, 69

int 0x10

;131
mov cx, 143
;69
mov dx, 71

int 0x10

jmp $

times 510 - ($ - $$) db 0
dw 0xaa55
