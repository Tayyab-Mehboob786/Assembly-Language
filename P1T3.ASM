dosseg
.model small
.stack 100h
.data
  msg db "ENTER THE INITIALS=$"
.code
   main proc

         ;GETTING DATA FROM .data

         mov ax,@data
         mov ds,ax

         ;PRINT MSG

         lea dx,msg
         mov ah,9
         int 21h

         ;GETTING FIRST INITIAL AND MOV TO BL

         mov ah,1
         int 21h
         mov bl,al

         ;GETTING SECOND INITIAL AND MOV TO CL

         mov ah,1
         int 21h
         mov bh,al

         ;GETTING THIRD INITIALS AND REMAIN IN AL

         mov ah,1
         int 21h
         mov cl,al
         
         ;PRINT THE INITIALS IN SEPRATE LINES

         mov dl,10
         mov ah,2
         int 21h

         mov dl,bl
         mov ah,2
         int 21h

         mov dl,10
         mov ah,2
         int 21h

         mov dl,bh
         mov ah,2
         int 21h

         mov dl,10
         mov ah,2
         int 21h

         mov dl,cl
         mov ah,2
         int 21h

         ;PROGRAM TERMINATION

         mov ah,4ch
         int 21h
   main endp
end main
