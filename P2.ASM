dosseg
.model small
.stack 100h
.data
  sterik db "**$",0dh,0ah
.code
  main proc
        mov ax,@data
        mov ds,ax
        mov cx,5
     o_loop:
        mov bx,cx
     i_loop:
        mov dl,'*'
        mov ah,2
        int 21h

        dec bx
        JNZ i_loop

        mov dl,10
        mov ah,2
        int 21h

        dec cx
        cmp cx,2
        jge o_loop

        lea dx,sterik
        mov ah,9
        int 21h

        mov dl,10
        mov ah,2
        int 21h

        lea dx,sterik
        mov ah,9
        int 21h


        mov ah,4ch
        int 21h
  main endp
  end main

