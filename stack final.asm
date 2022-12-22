 ;Simulation for the stack operations(push,pop)

 ; AbdEL-Rahman Yahia Abdo Hamada
 
 ; Shereen Galal El-kassaby El- metwaly

.model small
.data
    message1 db "Which operation do you want to do?","$"
    message2 db " '0' for push or '1' for pop","$"
    message3 db "----> stack is full                                                    ","$"
    message4 db "enter least                                                                       ","$" 
    message5 db "enter most                                                                          ","$"
    message6 db " ----> stack is empty                                                   ","$"
    message7 db "press space to pop                                                                    ","$" 
     message8 db "                                                                                      ","$" 
    
    num db "shereen","$"
.stack
.code
    main proc far
        .startup 
        
        
     call draw 
       mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
        
       ;;;;;;;;;;;;;;;;;;;;;
        ; display the first message
        lea dx,message1
        call write
        
          ;set cursor location to default(dh,dl)
       mov     dl, 40  ; column. 
       mov     dh,0   ; row. 
       mov     ah, 02h
       int     10h
       
       
       ;;;;;;;;;;;;;;;;;;;;; 
        
       ;display the second message
       lea dx,message2                     
       call write
       
       
       
       
       ;;;;;;;;;;;;;;;;;;;;;;
       call accept 
        
      ; mov ch,al
      
      
     
       
           
   
       ;;;;;;;;;;;;;;;;; 
       ;read num from user
 
        
       cmp al,30h ;cmp with 0
       je  push1
       
       jne pop1
       ;;;;;;;;;;;;;;;;;
       
       
push1:
          ;set cursor location to default(dh,dl)
      mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
       
       
       ;;;;;;;;;;;;;;;;;;;;;  
        
        ; "enter least"
       lea dx,message4
       call write
     
       ;set cursor location(dh,dl) 
       
          
       mov     dl, 14  ; column. 
       mov     dh, 18   ; row. 
       mov     ah, 02h
       int     10h


       call accept   
    
       call accept
    
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    
       ;set cursor location to default(dh,dl)
       mov     dl, 20  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
       
       
       ;;;;;;;;;;;;;;;;;;;;; 
       
       
       
       
       
       ; "enter most"
       lea dx,message5
       call write
     
    
      
        ;set cursor location(dh,dl)
        mov     dl, 14  ; column. 
        mov     dh, 16   ; row. 
        mov     ah, 02h
        int     10h
        call accept 
        call accept 
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
        
        
       ;set cursor location to default(dh,dl)
    mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
        
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
          ; display the first message
        lea dx,message1
        call write
        
          ;set cursor location to default(dh,dl)
       mov     dl, 40  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
        
       ;display the second message
       lea dx,message2
       call write
       
      
       call accept 
        
      ; mov ch,al
      
      
     
       
           
   
       ;;;;;;;;;;;;;;;;; 
       ;read num from user
 
        
       cmp al,30h ;cmp with 0
       je  push2
       
       jne pop2
       ;;;;;;;;;;;;;;;;;   
            
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
        
        
        
        
 push2:
       ;;;;;;;;;;;;;;;;;;;;;
       ;set cursor location to default(dh,dl)
     mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h  
        
        ; "enter least"
       lea dx,message4
       call write
     
       ;set cursor location(dh,dl) 
       
       mov     dl, 14  ; column. 
       mov     dh, 13   ; row. 
       mov     ah, 02h
       int     10h


       call accept   
    
       call accept
    
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    
       ;set cursor location to default(dh,dl)
       mov     dl, 20  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
       
       
       ;;;;;;;;;;;;;;;;;;;;; 
       
       
       
       
       
       ; "enter most"
       lea dx,message5
       call write
     
    
      
        ;set cursor location(dh,dl)
        mov     dl, 14  ; column. 
        mov     dh, 11   ; row. 
        mov     ah, 02h
        int     10h
        call accept 
        call accept 
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
        
        
       ;set cursor location to default(dh,dl)
      mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
        
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
          ; display the first message
        lea dx,message1
        call write
        
         ;set cursor location to default(dh,dl)
       mov     dl, 40  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
        
       ;display the second message
       lea dx,message2
       call write
       
      
       call accept 
        
      ; mov ch,al
      
      
     
       
           
   
       ;;;;;;;;;;;;;;;;; 
       ;read num from user
 
        
       cmp al,30h ;cmp with 0
       je  push3
       
       jne pop3
       ;;;;;;;;;;;;;;;;;   
            
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       
       
push3:
       
                mov     dl, 0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
       
       
       
       
       
        lea dx,message3
        call write 
        
         mov     dl, 0  ; column. 
       mov     dh, 1   ; row. 
       mov     ah, 02h
       int     10h
       
          ; display the first message
        lea dx,message1
        call write
        
         ;set cursor location to default(dh,dl)
       mov     dl, 40  ; column. 
       mov     dh, 1   ; row. 
       mov     ah, 02h
       int     10h
        
       ;display the second message
       lea dx,message2
       call write
       
      
       call accept 
        
      ; mov ch,al
      
      
               mov     dl, 0  ; column. 
       mov     dh, 1   ; row. 
       mov     ah, 02h
       int     10h
       
           
   
       ;;;;;;;;;;;;;;;;; 
       ;read num from user
 
        
       cmp al,30h ;cmp with 0 
         mov     dl, 0  ; column. 
       mov     dh, 1   ; row. 
       mov     ah, 02h
       int     10h
        
       ;display the second message
       lea dx,message8
       call write
       
       
       je  push3
       
       jne pop3
       ;;;;;;;;;;;;;;;;;   
            
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
       
        
         
 pop1: 
            mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
         lea dx,message6
        call write
         
          ;set cursor location to default(dh,dl)
   mov     dl,0  ; column. 
       mov     dh, 1   ; row. 
       mov     ah, 02h
       int     10h
        
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
          ; display the first message
        lea dx,message1
        call write
        
         ;set cursor location to default(dh,dl)
       mov     dl, 40  ; column. 
       mov     dh, 1   ; row. 
       mov     ah, 02h
       int     10h
        
       ;display the second message
       lea dx,message2
       call write
       
      
       call accept 
        
      ; mov ch,al
      
      
     
          
       cmp al,30h ;cmp with 0
           
        mov     dl, 0  ; column. 
       mov     dh, 1   ; row. 
       mov     ah, 02h
       int     10h
        
       ;display the second message
       lea dx,message8
       call write
                 
                 
                 
                 
                 
       je  push1
       
       jne pop1
       ;;;;;;;;;;;;;;;;;   
            
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         
         
         
         
         
         
         
pop2:  
         
         
         
                 ;set cursor location to default(dh,dl)
       mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
       
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
        ; "pop most"
       lea dx,message7
       call write
     
    
      
        ;set cursor location(dh,dl)
        mov     dl, 14  ; column. 
        mov     dh, 16   ; row. 
        mov     ah, 02h
        int     10h
        call accept 
        call accept 
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                
                      
                      
                      
                      
                      
                      ;set cursor location to default(dh,dl)
       mov     dl, 20  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h           
                      
                      
                      
                      
                      
       ;;;;;;;;;;;;;;;;;;;;;  
        
        ; "pop least"
       lea dx,message7
       call write
     
       ;set cursor location(dh,dl) 
       
          
       mov     dl, 14  ; column. 
       mov     dh, 18   ; row. 
       mov     ah, 02h
       int     10h


       call accept   
    
       call accept
    
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
       
                                  ;set cursor location to default(dh,dl)
      mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h 
          ; display the first message
        lea dx,message1
        call write
        
         ;set cursor location to default(dh,dl)
       mov     dl, 0  ; column. 
       mov     dh, 11   ; row. 
       mov     ah, 02h
       int     10h
                
                                   ;set cursor location to default(dh,dl)
       mov     dl, 20  ; column. 
       mov     dh,0   ; row. 
       mov     ah, 02h
       int     10h 
       ;display the second message
       lea dx,message2
       call write
       
      
       call accept 
        
      ; mov ch,al
      
      
     
       
           
   
       ;;;;;;;;;;;;;;;;; 
       ;read num from user
 
        
       cmp al,30h ;cmp with 0
       je  push1
       
       jne pop1
    

       
       
       
      
  
        
        
         
         
pop3:  
         
          ;set cursor location to default(dh,dl)
      mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
       
       
       ;;;;;;;;;;;;;;;;;;;;;  
        
        ; "pop least"
       lea dx,message7
       call write
     
             
        ;set cursor location(dh,dl)
        mov     dl, 14  ; column. 
        mov     dh, 11   ; row. 
        mov     ah, 02h
        int     10h
        call accept 
        call accept 
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    
       ;set cursor location to default(dh,dl)
       mov     dl, 20  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
       
       
       ;;;;;;;;;;;;;;;;;;;;; 
       
       
       
       
       
       ; "pop most"
       lea dx,message7
       call write
     
    
 
        
           ;set cursor location(dh,dl) 
       
          
       mov     dl, 14  ; column. 
       mov     dh, 13   ; row. 
       mov     ah, 02h
       int     10h


       call accept   
    
       call accept
    
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       ;set cursor location to default(dh,dl)
       mov     dl,0  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
        
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
      
       
                      
                      
           
          ; display the first message
        lea dx,message1
        call write
        
         ;set cursor location to default(dh,dl)
       mov     dl, 40  ; column. 
       mov     dh, 0   ; row. 
       mov     ah, 02h
       int     10h
        
       ;display the second message
       lea dx,message2
       call write
       
      
       call accept 
        
      ; mov ch,al
      
      
     
       
           
   
       ;;;;;;;;;;;;;;;;; 
       ;read num from user
 
        
       cmp al,30h ;cmp with 0
       je  push2
       
       jne pop2
       ;;;;;;;;;;;;;;;;;   
            
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       
                     
                      
                      
                      
                      
                      
                      
                      
                      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
   .exit
 main endp  
          ;read num from user
          accept proc near
         
        
        
            mov ah, 01h
            int 21h 
            
            ret
        accept endp
       ;;;;;;;;;;;;;;;;;;
       
        
        ;newLine
        newLine proc near
            mov dl, 10
            mov ah, 02h
            int 21h
            ret
        newLine endp
        ;;;;;;;;;;;;;;;;;
        ;write
        write proc near
            mov ah,09h
            int 21h
            ret
        write endp
        ;;;;;;;;;;;;
        ; draw
    draw PROC near
        MOV AH,0
    MOV Al,13H
    INT 10H
    
    MOV AH,0CH
    MOV Al,10 
    MOV CX,80 
    MOV DX,80 
     INT 10H
            ;;;;;;;;;;;;;;;;;;;;;;
     MOV BL,80
     f:
      INT 10H
        INC DX
       
       DEC BL
       JNZ f  
       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       
           MOV BL,80
    s:
      INT 10H
        INC cx
       
       DEC BL
       JNZ s
       
       
       
       
      ;;;;;;;;;;;;;;;;;;;;;;;;
      MOV BL,20
      t:
      INT 10H
      DEC DX
       
      DEC BL
      JNZ t
      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
      
      
    MOV BL,80
    four:
      INT 10H
        dec cx
       
       DEC BL
       JNZ four
      
      ;;;;;;;;;;;;;;;;;;;;;;;;; 
      
       MOV BL,20
      five:
      INT 10H
      DEC DX
       
      DEC BL
      JNZ five
      ;;;;;;;;;;;;;;;;;;;;   
    MOV BL,80
    six:
      INT 10H
        INC cx
       
       DEC BL
       JNZ six
      
      ;;;;;;;;;;;;;;;;;;; 
      
                 MOV BL,20
      _7:
      INT 10H
      inc DX
       
      DEC BL
      JNZ _7
      ;;;;;;;;;;;;;;;;;;;;
                 MOV BL,40
      _8:
      INT 10H
      DEC DX
       
      DEC BL
      JNZ _8
      ;;;;;;;;;;;;;;;;;; ;; 
                     MOV BL,80
    _9:
      INT 10H
        dec cx
       
       DEC BL
       JNZ _9
      
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                              MOV BL,80
    _10:
      INT 10H
        inc cx
       
       DEC BL
       JNZ _10                          
                                         
    
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
                   MOV BL,20
      _11:
      INT 10H
      DEC DX
       
      DEC BL
      JNZ  _11
    
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                              

  
    ret
    draw endp 
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    draw_25 proc near
        
        
            
end main