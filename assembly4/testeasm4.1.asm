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
mov al, 0xff
;mov cx, 124
mov cx, 0x7c
mov dx, 0x45
mov bh, 0x00

int 0x10
