dosseg
.model small
.stack 100h
.data
   msg1 db "ENTER 1ST NUMBER:$"
   msg2 db "ENTER 2ND NUMBER:$"
   msg3 db "ENTER THE OPERATION [AND(A),OR(O),XOR(X)]:$"
   msg4 db "RESULT:$"
.code
   main proc
         
          mov ax,@data
          mov ds,ax

         ;first number prompt

          lea dx,msg1
          mov ah,9
          int 21h

          mov ah,1
          int 21h
          mov bl,al

          mov dl,10
          int 21h

          ;second number prompt

          lea dx,msg2
          mov ah,9
          int 21h

          mov ah,1
          int 21h
          mov cl,al

          mov dl,10
          INT 21H

          ;operation prompt ;[AND/OR/XOR]

          lea dx,msg3
          mov ah,9
          int 21h

          mov ah,1
          int 21h

          mov dl,10
          int 21h

          cmp al,'A'
          JE ANDO

          cmp al,'O'
          JE ORO

          cmp al,'X'
          JE XORO

      ANDO:
          AND bl,cl    ;AND OPERATION
          JMP RESULT

      ORO:
          OR bl,cl     ;OR OPERATION
          JMP RESULT

      XORO:            ;XOR OPERATION
          XOR bl,cl


      RESULT:
          lea dx,msg4
          mov ah,9
          int 21h

          mov dl,bl
          mov ah,2
          int 21h

         mov ah,4ch
         int 21h

  main endp
end main
