.MODEL  SMALL
.STACK 100H 

.CODE 

MAIN PROC
 
 MOV AL,11011100b

 MOV CX,8  
 
  REVERSE: 
  
    SHL AL,1
     
    RCR BL,1 
    
    LOOP REVERSE 
    
    MOV AL,BL
     
    MOV CX,8
    
    PRINT:
    
        MOV AH,2 
        
        MOV DL,'0'
        
        TEST BL, 10000000b
        
        JZ ZERO
        
        MOV DL,'1'
        
     ZERO:
        
        INT 21H
             
        SHL BL,1
        
        LOOP PRINT
     
        MOV DL,'b'
        
        INT 21H
        
        ;DOS EXIT
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN