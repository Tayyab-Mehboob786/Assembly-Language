dosseg
.model small
.stack 100h
.data

.code
   main proc

         ;PRINT 'T'

         mov dl,'T'
         mov ah,2
         int 21h

         ;NEW LINE

         mov dl,10
         mov ah,2
         int 21h

         ;ONE SPACE

         mov dl,32
         mov ah,2
         int 21h

         ;PRINT 'A'

         mov dl,'A'
         mov ah,2
         int 21h

         ;NEW LINE

         mov dl,10
         mov ah,2
         int 21h

         ;TWO SPACES

         mov dl,32
         mov ah,2
         int 21h
         mov dl,32
         mov ah,2
         int 21h

         ;PRINT 'Y'

         mov dl,'Y'
         mov ah,2
         int 21h

         ;NEW LINE

         mov dl,10
         mov ah,2
         int 21h

         ;AGAIN TWO SPACES

         mov dl,32
         mov ah,2
         int 21h
         mov dl,32
         mov ah,2
         int 21h

         ;PRINT 'Y'
        
         mov dl,'Y'
         mov ah,2
         int 21h

         ;NEW LINE

         mov dl,10
         mov ah,2
         int 21h

         ;ONE SPACE

         mov dl,32
         mov ah,2
         int 21h

         ;PRINT 'A'

         mov dl,'A'
         mov ah,2
         int 21h

         ;NEW LINE

         mov dl,10
         mov ah,2
         int 21h

         ;PRINT 'B'

         mov dl,'B'
         mov ah,2
         int 21h

         ;PROGRAM TERMINATION

         mov ah,4ch
         int 21h
   main endp
end main
