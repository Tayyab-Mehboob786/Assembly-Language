dosseg
.model small
.stack 100h
.data
     msg1 db "ENTER A CHARACTER= $"
     msg2 db "YOU ENTERED= $"
.code
   main proc
          ;GETTING DATA FROM .data

          mov ax,@data
          mov ds,ax

          ;PRINTING STRING 'msg1'

          lea dx,msg1
          mov ah,9
          int 21h

          ;GETTING VALUE FROM USER

          mov ah,1
          int 21h

          ;MOVE VALUE FORM 'AL' TO 'BL'

          mov bl,al

          ;NEW LINE

           mov dl,10
           mov ah,2
           int 21h

           ;PRINT THE VALUE

           lea dx,msg2
           mov ah,9
           int 21h
           mov dl,bl
           mov ah,2
           int 21h

           ;PROGRAM TERMINATION

           mov ah,4ch
           int 21h
    main endp
end main



