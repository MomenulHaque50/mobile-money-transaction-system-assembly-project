
.MODEL LARGE
.STACK 1000H
.DATA

     acc db 60 dup('$')
     amo db 60 dup('$')
     ref db 60 dup('$')
     cur db 60 dup('$')
     pin db 20 dup('$')
     setpin db '12345$'
    NEWLINE DB 10,13,"$"
    N DB ?
    S DB ?
    
    MSG2 DB  10,13,'     Wrong PIN,Try again leter.$'
    MSG3 DB 10,13, '     Your current bKash Account blance is TK 1000.00.$'
    MSG4 DB  10,13,'     Your available bKash Account blance is TK 1000.00.$' 
    MSG5 DB 10,13, '     Your current bKash Account blance is TK 900.00.$'
    MSG6 DB  10,13,'     Your available bKash Account blance is TK 900.00.$'
    MSG7 DB 10,13, '     Your current bKash Account blance is TK 800.00.$'
    MSG8 DB  10,13,'     Your available bKash Account blance is TK 800.00.$'
    MSG9 DB 10,13, '     Your current bKash Account blance is TK 750.00.$'
    MSG10 DB  10,13,'    Your available bKash Account blance is TK 750.00.$'
    MSG11 DB 10,13, '    Your current bKash Account blance is TK 650.00.$'
    MSG12 DB  10,13,'    Your available bKash Account blance is TK 650.00.$' 
    MSG111 DB 10,13,'     Your current bKash Account blance is TK 450.00.$'
    MSG121 DB  10,13,'    Your available bKash Account blance is TK 450.00.$'
    
    MSG13 DB 10,13, '     Send Money TK. $'
    MSG14 DB  10,13,'     to $' 
    MSG15 DB  10,13,'     sucessful.$'
    MSG16 DB  10,13,'     Ref $'
    MSG17 DB  10,13,'     Fee TK0.00.$'
    MSG18 DB  10,13,'     Balance TK 900.00 $'
    MSG19 DB  10,13,'     Balance TK 800.00 $'
    MSG20 DB  10,13,'     Balance TK 750.00 $'
    MSG211 DB  10,13,'     Balance TK 650.00 $'
    MSG212 DB  10,13,'     Balance TK 450.00 $'
    MSG22 DB  10,13,'     TrxID 8R546C451M $'
    MSG23 DB  10,13,'     TrxID 9KUP2BP01L $'
    MSG24 DB  10,13,'     TrxID 1V5N3Z079P $' 
    MSG27 DB  10,13,'     TrxID 2M9OK219QQ $'
    MSG25 DB  10,13,'     Counter $' 
    MSG26 DB 10,13, '     Payment TK. $'
    MSG28 DB 10,13, '     Cash Out TK. $'
    MSG29 DB  10,13,'     Fee TK5.00.$'
    MSG30 DB 10,13, '     Received Recharge request of TK. $'
    MSG31 DB  10,13,'     for $' 
    

M1 DB 10,13,10,13,'   bkash$',10,13 
M2 DB 10,13,10,13,'   Enter Your Option: $'

M3 DB 10,13,'  1.Send Money$' 
M4 DB 10,13,'  2.Send Money to Non-bkash User$'
M5 DB 10,13,'  3.Mobile Recharge$'
M6 DB 10,13,'  4.Payment$'
M7 DB 10,13,'  5.Cash Out$'
M8 DB 10,13,'  6.Pay Bill$' 
M9 DB 10,13,'  7.My bkash$'
M10 DB 10,13,'  8.Reset PIN$' 
M10S DB 10,13,'  9.Exit$'
               
M20S DB 10,13,'  0.Exit$'
               
M30S DB 10,13,'  1.Main Menu$'
  
;Send Money   

M11 DB 10,13,'  Enter Receiver bkash Account No:$'
M12 DB 10,13,'  Enter Amount: $'
M13 DB 10,13,'  Enter Reference:$'
M14 DB 10,13,'  Send Money.$'
M15 DB 10,13,'  To:$'
M16 DB 10,13,'  Amount:TK $'
M17 DB 10,13,'  Reference:$' 
M18 DB 10,13,'  Enter Menu PIN to conform:$'
M19 DB 10,13,'  Send Money to Non-bkash User.$'
 

;Recharge 

M20 DB 10,13,'  1.Robi$' 
M21 DB 10,13,'  2.Airtel$' 
M27 DB 10,13,'  3.Tk 2 Cashback on Tk 55$' 
M28 DB 10,13,'  4.Banglalink$'
M29 DB 10,13,'  5.Grameenphone$'
M30 DB 10,13,'  6.Teletalk$'
M31 DB 10,13,'  0.Main Menu$'

 
;Recharge conform
 
M22 DB 10,13,'  Mobile Recharge$'
M32 DB 10,13,'  1.Prepaid$' 
M33 DB 10,13,'  2.Postpaid$' 
M34 DB 10,13,'  3.Internet packs$' 
M35 DB 10,13,'  4.Voice packs$'
M36 DB 10,13,'  5.Bundle packs$'
M37 DB 10,13,'  Enter Robi Mobile No:$' 
M38 DB 10,13,'  Enter Recharge Amount:$'

;payment 

M39 DB 10,13,'  Enter Merchant bKash Account No:$' 
M40 DB 10,13,'  Enter Counter No:$' 
M41 DB 10,13,'  Payment:$' 
M42 DB 10,13,'  Counter:$'
 

;cash out

M43 DB 10,13,'  1.From Agent$' 
M44 DB 10,13,'  2.From ATM$' 
M45 DB 10,13,'  3.Cash Out with bKash App at a lower cost!$' 
M46 DB 10,13,'  Enter Agent bKash Account No:$'
M47 DB 10,13,'  Cash Out.$'

;Pay Bill 

M48 DB 10,13,'  1.Electricity(Prepaid)$' 
M49 DB 10,13,'  2.Electricity(Postpaid)$' 
M50 DB 10,13,'  3.Gas$' 
M51 DB 10,13,'  4.Water$'
M52 DB 10,13,'  5.Internet and Phone$'
M53 DB 10,13,'  6.TV$'
M54 DB 10,13,'  7.City Services$'
M55 DB 10,13,'  8.Education$'
M56 DB 10,13,'  9.Financial Services$'
M57 DB 10,13,'  10.Other$'

;My bikash 

M58 DB 10,13,'  1.Check Balance$' 
M59 DB 10,13,'  2.Request Statement$' 
M60 DB 10,13,'  3.Change PIN$' 
M61 DB 10,13,'  4.Priyo Numbers$'
M62 DB 10,13,'  5.Manage Beneficiary$'
M63 DB 10,13,'  6.Update MNP Info$'
M64 DB 10,13,'  7.Conform iPhone Login$'
M65 DB 10,13,'  8.Helpline$'
M66 DB 10,13,'  Enter Menu PIN:$'



;INVALID
M67 DB 10,13,10,13,'   INVALID ENTRY$'
M68 DB 10,13,10,13,'   Connection failed try again leter$'

  NUM1 DB 1

SEJ DB 10,13,10,13,' $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  TOP:
  
    LEA DX,M1
    MOV AH,9
    INT 21H
       
    
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    
    LEA DX,M5
    MOV AH,9
    INT 21H
    
    LEA DX,M6
    MOV AH,9
    INT 21H
    
    LEA DX,M7
    MOV AH,9
    INT 21H
    
     LEA DX,M8
    MOV AH,9
    INT 21H
    
     LEA DX,M9
    MOV AH,9
    INT 21H
    
     LEA DX,M10
    MOV AH,9
    INT 21H 
    
     LEA DX,M10S
    MOV AH,9
    INT 21H

    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE SENDMONEY
    
    CMP BH,2
    JE SENDMONEYNON   
     
    CMP BH,3
    JE RECHARGE 
    
    CMP BH,4
    JE PAYMENT
    
    CMP BH,5
    JE CASHOUT 
    
    CMP BH,6
    JE PAYBILL 
     
    CMP BH,7
    JE MYBIKASH 
    
    CMP BH,9
    JE EXIT 
     
    JMP INVALID
    
       
    
    
   SENDMONEY:
    
        ;SENDMONEY STARTS

    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
  
   
    LEA DX,M11    
    MOV AH,9
    INT 21H 
    
    mov ax,@data
    mov ds,ax
    mov si,offset acc
      ; input a string
    input: mov ah,1
    int 21h
    cmp al,13
    je Amount
    mov [si],al
    inc si
    jmp input 
    
    
    Amount:

    LEA DX,M12    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset amo
      ; input a string
    input2: mov ah,1
    int 21h
    cmp al,13
    je Reference
    mov [si],al
    inc si
    jmp input2 
    
    
    
    
    Reference:
   
    LEA DX,M13    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset ref
      ; input a string
    input3: mov ah,1
    int 21h
    cmp al,13
    je Output
    mov [si],al
    inc si
    jmp input3 
    
    
    Output:

    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H        
    
    LEA DX,M14
    MOV AH,9          
    INT 21H
            
            
    LEA DX,M15        ;8th
    MOV AH,9
    INT 21H 

    mov dl,32
    mov ah,2
    int 21h
    
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 


again1: cmp [di],'$'
    je last1
    cmp [di],32
    je next1
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again1

next1: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again1
    
    
  last1:   
    
    LEA DX,M16         ;9th
    MOV AH,9
    INT 21H
    
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again2: cmp [di],'$'
    je last2
    cmp [di],32
    je next2
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again2

next2: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again2
    
  last2:  
    LEA DX,M17              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset ref
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again3: cmp [di],'$'
    je last3
    cmp [di],32
    je next3
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again3

next3: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again3
    
    
   last3: 
    LEA DX,M18         
    MOV AH,9
    INT 21H
    
    mov ax,@data
    mov ds,ax
    mov si,offset pin
      ; input a string
    input4: mov ah,1
    int 21h
    cmp al,13
    je sucess
    mov [si],al
    inc si
    jmp input4
    
    
    sucess:
    ASSUME DS:DATA,CS:CODE
START:MOV AX,DATA
    MOV DS,AX

    LEA SI,pin
    LEA DI,setpin
    
    
    MOV BX,00

    MOV BL,pin+1
    MOV BH,setpin+1

    CMP BL,BH
    JNE L1

    ADD SI,2
    ADD DI,2

  L2:MOV BL,BYTE PTR[SI]
    CMP BYTE PTR[DI],BL
    JNE L1
    INC SI
    INC DI
    CMP BYTE PTR[DI],"$"
    JNE L2
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    MOV AH,09H
    LEA DX,MSG13
    INT 21H
 
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again2p: cmp [di],'$'
    je last2p
    cmp [di],32
    je next2p
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again2p

next2p: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again2p 
    
  last2p:  
    LEA DX,MSG14              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again3p: cmp [di],'$'
    je last3p
    cmp [di],32
    je next3p
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again3p

next3p: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again3p  
   last3p:   
    
    LEA DX,MSG15         ;9th
    MOV AH,9
    INT 21H
    LEA DX,MSG16         ;9th
    MOV AH,9
    INT 21H
    
   mov [si],'$'
   mov di,offset ref
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again4p: cmp [di],'$'
    je last4p
    cmp [di],32
    je next4p
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again4p

next4p: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again4p
    
    last4p:
    LEA DX,MSG17         ;9th
    MOV AH,9
    INT 21H
    LEA DX,MSG18         ;9th
    MOV AH,9
    INT 21H 
    LEA DX,MSG22         ;9th
    MOV AH,9
    INT 21H

    JMP L5

  L1:MOV AH,09H
    LEA DX,MSG2
    INT 21H
    JMP INVALID


 L5:
     MOV BH,NUM1
     MOV BH,2
     MOV NUM1,BH
 
 
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT
    
    
    
   SENDMONEYNON:
   
   ;SENDMONEYNON STARTS

    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
  
   
    LEA DX,M11    
    MOV AH,9
    INT 21H 
    
    mov ax,@data
    mov ds,ax
    mov si,offset acc
      ; input a string
    input11: mov ah,1
    int 21h
    cmp al,13
    je Amount11
    mov [si],al
    inc si
    jmp input11 
    
    
    Amount11:

    LEA DX,M12    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset amo
      ; input a string
    input22: mov ah,1
    int 21h
    cmp al,13
    je Reference22
    mov [si],al
    inc si
    jmp input22 
    
    
    
    
    Reference22:
   
    LEA DX,M13    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset ref
      ; input a string
    input23: mov ah,1
    int 21h
    cmp al,13
    je Output23
    mov [si],al
    inc si
    jmp input23 
    
    
    Output23:

    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H        
    
    LEA DX,M19
    MOV AH,9          
    INT 21H
            
            
    LEA DX,M15        ;8th
    MOV AH,9
    INT 21H 

    mov dl,32
    mov ah,2
    int 21h
    
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 


again12: cmp [di],'$'
    je last12
    cmp [di],32
    je next12
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again12

next12: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again12
    
    
  last12:   
    
    LEA DX,M16         ;9th
    MOV AH,9
    INT 21H
    
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again24: cmp [di],'$'
    je last24
    cmp [di],32
    je next24
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again24

next24: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again24
    
  last24:  
    LEA DX,M17              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset ref
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again34: cmp [di],'$'
    je last34
    cmp [di],32
    je next34
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again34

next34: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again34
    
    
   last34: 
    LEA DX,M18         
    MOV AH,9
    INT 21H
    
    mov ax,@data
    mov ds,ax
    mov si,offset pin
      ; input a string
    input41: mov ah,1
    int 21h
    cmp al,13
    je sucess1
    mov [si],al
    inc si
    jmp input41
    
    
    sucess1:
    ASSUME DS:DATA,CS:CODE
START1:MOV AX,DATA
    MOV DS,AX

    LEA SI,pin
    LEA DI,setpin
    
    
    MOV BX,00

    MOV BL,pin+1
    MOV BH,setpin+1

    CMP BL,BH
    JNE L1p

    ADD SI,2
    ADD DI,2

  L2p:MOV BL,BYTE PTR[SI]
    CMP BYTE PTR[DI],BL
    JNE L1p
    INC SI
    INC DI
    CMP BYTE PTR[DI],"$"
    JNE L2p
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    MOV AH,09H
    LEA DX,MSG13
    INT 21H
 
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again2pp: cmp [di],'$'
    je last2pp
    cmp [di],32
    je next2p
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again2pp

next2pp: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again2pp 
    
  last2pp:  
    LEA DX,MSG14              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again3pp: cmp [di],'$'
    je last3pp
    cmp [di],32
    je next3pp
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again3pp

next3pp: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again3pp  
   last3pp:   
    
    LEA DX,MSG15         ;9th
    MOV AH,9
    INT 21H
    LEA DX,MSG16         ;9th
    MOV AH,9
    INT 21H
    
   mov [si],'$'
   mov di,offset ref
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again4pp: cmp [di],'$'
    je last4pp
    cmp [di],32
    je next4pp
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again4pp

next4pp: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again4pp
    
    last4pp:
    LEA DX,MSG17         ;9th
    MOV AH,9
    INT 21H
    LEA DX,MSG19         ;9th
    MOV AH,9
    INT 21H 
    LEA DX,MSG23         ;9th
    MOV AH,9
    INT 21H

    JMP L5p

  L1p:MOV AH,09H
    LEA DX,MSG2
    INT 21H
    JMP INVALID


 L5p:
 
    MOV BH,NUM1
     MOV BH,3
     MOV NUM1,BH
 
 
     LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT 
    
    
      
   RECHARGE:
     LEA DX,M1
    MOV AH,9
    INT 21H
       
    
    LEA DX,M20
    MOV AH,9
    INT 21H
    
    LEA DX,M21
    MOV AH,9
    INT 21H
    
    
    LEA DX,M27
    MOV AH,9
    INT 21H
    
    LEA DX,M28
    MOV AH,9
    INT 21H
    
    LEA DX,M29
    MOV AH,9
    INT 21H
    
     LEA DX,M30
    MOV AH,9
    INT 21H
    
     LEA DX,M31
    MOV AH,9
    INT 21H

    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE RECHARGECONFORM 
    
    
    
    RECHARGECONFORM:
    
    LEA DX,M1
    MOV AH,9
    INT 21H
       
    
    LEA DX,M32
    MOV AH,9
    INT 21H
    
    LEA DX,M33
    MOV AH,9
    INT 21H
    
    
    LEA DX,M34
    MOV AH,9
    INT 21H
    
    LEA DX,M35
    MOV AH,9
    INT 21H
    
    LEA DX,M36
    MOV AH,9
    INT 21H
    
    
     LEA DX,M31
    MOV AH,9
    INT 21H

    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE RECHARGEFINAL
    
    
    RECHARGEFINAL:
     
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
  
   
    LEA DX,M37    
    MOV AH,9
    INT 21H 
    
    mov ax,@data
    mov ds,ax
    mov si,offset acc
      ; input a string
    input111: mov ah,1
    int 21h
    cmp al,13
    je Amount111
    mov [si],al
    inc si
    jmp input111 
    
    
    Amount111:

    LEA DX,M38    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset amo
      ; input a string
    input221: mov ah,1
    int 21h
    cmp al,13
    je Output231
    mov [si],al
    inc si
    jmp input221 
    
    
   
    
    
    Output231:

    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H        
    
    LEA DX,M22
    MOV AH,9          
    INT 21H
            
            
    LEA DX,M15        ;8th
    MOV AH,9
    INT 21H 

    mov dl,32
    mov ah,2
    int 21h
    
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 


again121: cmp [di],'$'
    je last121
    cmp [di],321
    je next121
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again121

next121: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again121
    
    
  last121:   
    
    LEA DX,M16         ;9th
    MOV AH,9
    INT 21H
    
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again241: cmp [di],'$'
    je last341
    cmp [di],32
    je next241
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again241

next241: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again241
    
 
    
   last341: 
    LEA DX,M18         
    MOV AH,9
    INT 21H
    
    mov ax,@data
    mov ds,ax
    mov si,offset pin
      ; input a string
    input411: mov ah,1
    int 21h
    cmp al,13
    je sucess11
    mov [si],al
    inc si
    jmp input411
    
    
    sucess11:
   ASSUME DS:DATA,CS:CODE
STARTA:MOV AX,DATA
    MOV DS,AX

    LEA SI,pin
    LEA DI,setpin
    
    
    MOV BX,00

    MOV BL,pin+1
    MOV BH,setpin+1

    CMP BL,BH
    JNE L1A

    ADD SI,2
    ADD DI,2

  L2A:MOV BL,BYTE PTR[SI]
    CMP BYTE PTR[DI],BL
    JNE L1A
    INC SI
    INC DI
    CMP BYTE PTR[DI],"$"
    JNE L2A
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    MOV AH,09H
    LEA DX,MSG30
    INT 21H
 
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again2pA: cmp [di],'$'
    je last2pA
    cmp [di],32
    je next2pA
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again2pA

next2pA: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again2pA 
    
  last2pA:  
    LEA DX,MSG31              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again3pA: cmp [di],'$'
    je last3pA
    cmp [di],32
    je next3pA
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again3pA

next3pA: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again3pA  
   last3pA:   
    
    LEA DX,MSG15         ;9th
    MOV AH,9
    INT 21H
 
    
    last4pA:
    LEA DX,MSG17         ;9th
    MOV AH,9
    INT 21H
    LEA DX,MSG20         ;9th
    MOV AH,9
    INT 21H 
    LEA DX,MSG24         ;9th
    MOV AH,9
    INT 21H

    JMP L5A

  L1A:MOV AH,09H
    LEA DX,MSG2
    INT 21H
    JMP INVALID


 L5A:
      MOV BH,NUM1
     MOV BH,4
     MOV NUM1,BH
 
     LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT 
    
    
   PAYMENT: 
     

    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
  
   
    LEA DX,M39   
    MOV AH,9
    INT 21H 
    
    mov ax,@data
    mov ds,ax
    mov si,offset acc
      ; input a string
    input55: mov ah,1
    int 21h
    cmp al,13
    je Amount55
    mov [si],al
    inc si
    jmp input55 
    
    
    Amount55:

    LEA DX,M12    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset amo
      ; input a string
    input56: mov ah,1
    int 21h
    cmp al,13
    je Reference55
    mov [si],al
    inc si
    jmp input56 
    
    
    
    
    Reference55:
   
    LEA DX,M13    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset ref
      ; input a string
    input57: mov ah,1
    int 21h
    cmp al,13
    je counter55
    mov [si],al
    inc si
    jmp input57
    
     
    counter55:
   
    LEA DX,M40    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset cur
      ; input a string
    input58: mov ah,1
    int 21h
    cmp al,13
    je Output55
    mov [si],al
    inc si
    jmp input58  
    
    
    Output55:

    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H        
    
    LEA DX,M41
    MOV AH,9          
    INT 21H
            
            
    LEA DX,M15        ;8th
    MOV AH,9
    INT 21H 

    mov dl,32
    mov ah,2
    int 21h
    
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 


again155: cmp [di],'$'
    je last155
    cmp [di],32
    je next155
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again155

next155: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again155
    
    
  last155:   
    
    LEA DX,M16         ;9th
    MOV AH,9
    INT 21H
    
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again255: cmp [di],'$'
    je last255
    cmp [di],32
    je next255
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again255

next255: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again255
    
  last255:  
    LEA DX,M17              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset ref
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again355: cmp [di],'$'
    je last555
    cmp [di],32
    je next555
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again355

next355: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again355
      
  last555:  
    LEA DX,M42              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset cur
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again555: cmp [di],'$'
    je last355
    cmp [di],32
    je next555
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again555

next555: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again355  
    
   last355: 
    LEA DX,M18         
    MOV AH,9
    INT 21H
    
    mov ax,@data
    mov ds,ax
    mov si,offset pin
      ; input a string
    input455: mov ah,1
    int 21h
    cmp al,13
    je sucess55
    mov [si],al
    inc si
    jmp input455
    
    
    sucess55:
    ASSUME DS:DATA,CS:CODE
STARTK:MOV AX,DATA
    MOV DS,AX

    LEA SI,pin
    LEA DI,setpin
    
    
    MOV BX,00

    MOV BL,pin+1
    MOV BH,setpin+1

    CMP BL,BH
    JNE L1k

    ADD SI,2
    ADD DI,2

  L2k:MOV BL,BYTE PTR[SI]
    CMP BYTE PTR[DI],BL
    JNE L1k
    INC SI
    INC DI
    CMP BYTE PTR[DI],"$"
    JNE L2k
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    MOV AH,09H
    LEA DX,MSG26
    INT 21H
 
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again2pk: cmp [di],'$'
    je last2pk
    cmp [di],32
    je next2pk
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again2pk

next2pk: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again2pk 
    
  last2pk:  
    LEA DX,MSG14              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again3pk: cmp [di],'$'
    je last3pk
    cmp [di],32
    je next3pk
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again3pk

next3pk: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again3pk  
   last3pk:   
    
    LEA DX,MSG15         ;9th
    MOV AH,9
    INT 21H
    LEA DX,MSG16         ;9th
    MOV AH,9
    INT 21H
    
   mov [si],'$'
   mov di,offset ref
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again4pk: cmp [di],'$'
    je last555k
    cmp [di],32
    je next4pk
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again4pk

next4pk: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again4pk
    
    
    last555k:  
    LEA DX,MSG25              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset cur
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again555k: cmp [di],'$'
    je last4pk
    cmp [di],32
    je next555
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again555k

next555k: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again555k
    
    last4pk:
    LEA DX,MSG17         ;9th
    MOV AH,9
    INT 21H
    LEA DX,MSG211         ;9th
    MOV AH,9
    INT 21H 
    LEA DX,MSG27         ;9th
    MOV AH,9
    INT 21H

    JMP L5k

  L1k:MOV AH,09H
    LEA DX,MSG2
    INT 21H
    JMP INVALID


 L5k:
      MOV BH,NUM1
     MOV BH,5
     MOV NUM1,BH
 
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT
    
    
    CASHOUT:
    
     LEA DX,M1
    MOV AH,9
    INT 21H
       
    
    LEA DX,M43
    MOV AH,9
    INT 21H
    
    LEA DX,M44
    MOV AH,9
    INT 21H
    
    
    LEA DX,M45
    MOV AH,9
    INT 21H
    
    LEA DX,M31
    MOV AH,9
    INT 21H
    

    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE CASHOUT2
    
    CMP BH,0
    JE TOP   
    
    CASHOUT2:
     
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
  
   
    LEA DX,M46    
    MOV AH,9
    INT 21H 
    
    mov ax,@data
    mov ds,ax
    mov si,offset acc
      ; input a string
    input86: mov ah,1
    int 21h
    cmp al,13
    je Amount86
    mov [si],al
    inc si
    jmp input86 
    
    
    Amount86:

    LEA DX,M12    
    MOV AH,9
    INT 21H 
    
    
    mov ax,@data
    mov ds,ax
    mov si,offset amo
      ; input a string
    input286: mov ah,1
    int 21h
    cmp al,13
    je Output86
    mov [si],al
    inc si
    jmp input286 
    

    
    
    Output86:

    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H        
    
    LEA DX,M47
    MOV AH,9          
    INT 21H
            
            
    LEA DX,M15        ;8th
    MOV AH,9
    INT 21H 

    mov dl,32
    mov ah,2
    int 21h
    
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 


again186: cmp [di],'$'
    je last186
    cmp [di],32
    je next186
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again186

next186: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again186
    
    
  last186:   
    
    LEA DX,M16         ;9th
    MOV AH,9
    INT 21H
    
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again286: cmp [di],'$'
    je last386
    cmp [di],32
    je next286
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again286

next286: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again286
    
  
    
    
   last386: 
    LEA DX,M18         
    MOV AH,9
    INT 21H
    
    mov ax,@data
    mov ds,ax
    mov si,offset pin
      ; input a string
    input486: mov ah,1
    int 21h
    cmp al,13
    je sucess86
    mov [si],al
    inc si
    jmp input486
    
    
    sucess86:
   ASSUME DS:DATA,CS:CODE
STARTV:MOV AX,DATA
    MOV DS,AX

    LEA SI,pin
    LEA DI,setpin
    
    
    MOV BX,00

    MOV BL,pin+1
    MOV BH,setpin+1

    CMP BL,BH
    JNE L1V

    ADD SI,2
    ADD DI,2

  L2V:MOV BL,BYTE PTR[SI]
    CMP BYTE PTR[DI],BL
    JNE L1V
    INC SI
    INC DI
    CMP BYTE PTR[DI],"$"
    JNE L2V
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    MOV AH,09H
    LEA DX,MSG28
    INT 21H
 
   mov [si],'$'
   mov di,offset amo
   MOV AX,@DATA  
   MOV DS,AX  
     
    
    again2pV: cmp [di],'$'
    je last2pV
    cmp [di],32
    je next2pV
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again2pV

next2pV: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again2pV 
    
  last2pV:  
    LEA DX,MSG14              
    MOV AH,9
    INT 21H 
        
   mov [si],'$'
   mov di,offset acc
   MOV AX,@DATA  
   MOV DS,AX 
   
    
    again3pV: cmp [di],'$'
    je last3pV
    cmp [di],32
    je next3pV
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again3pV

next3pV: mov dl,32
    mov ah,2
    int 21h
    inc di
    jmp again3pV  
   last3pV:   
    
    LEA DX,MSG15         ;9th
    MOV AH,9
    INT 21H

    
    
    last4pV:
    LEA DX,MSG29         ;9th
    MOV AH,9
    INT 21H
    LEA DX,MSG212         ;9th
    MOV AH,9
    INT 21H 
    LEA DX,MSG27         ;9th
    MOV AH,9
    INT 21H

    JMP L5V

  L1V:MOV AH,09H
    LEA DX,MSG2
    INT 21H
    JMP INVALID


 L5V: 
      MOV BH,NUM1
     MOV BH,6
     MOV NUM1,BH
 
 
     LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT 
    
    
    
      
   
    PAYBILL:
     
    LEA DX,M1
    MOV AH,9
    INT 21H
       
    
    LEA DX,M48
    MOV AH,9
    INT 21H
    
    LEA DX,M49
    MOV AH,9
    INT 21H
    
    
    LEA DX,M50
    MOV AH,9
    INT 21H
    
    LEA DX,M51
    MOV AH,9
    INT 21H
    
    LEA DX,M52
    MOV AH,9
    INT 21H
    
     LEA DX,M53
    MOV AH,9
    INT 21H
    
     LEA DX,M54
    MOV AH,9
    INT 21H
    
     LEA DX,M55
    MOV AH,9
    INT 21H 
    
     LEA DX,M56
    MOV AH,9
    INT 21H
     
     LEA DX,M57
    MOV AH,9
    INT 21H 
    
     LEA DX,M31
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
     CMP BH,0
    JE TOP
    
   MYBIKASH:
    
     LEA DX,M1
    MOV AH,9
    INT 21H
       
    
    LEA DX,M58
    MOV AH,9
    INT 21H
    
    LEA DX,M59
    MOV AH,9
    INT 21H
    
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M62
    MOV AH,9
    INT 21H
    
     LEA DX,M63
    MOV AH,9
    INT 21H
    
     LEA DX,M64
    MOV AH,9
    INT 21H
    
     LEA DX,M65
    MOV AH,9
    INT 21H 
    
     LEA DX,M31
    MOV AH,9
    INT 21H

    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE Balance
    CMP BH,0
    JE TOP
    
    
    
   Balance: 
    LEA DX,M66         
    MOV AH,9
    INT 21H
    
    mov ax,@data
    mov ds,ax
    mov si,offset pin
      ; input a string
    input472: mov ah,1
    int 21h
    cmp al,13
    je sucess72
    mov [si],al
    inc si
    jmp input472
    
    
    sucess72:
  
     ASSUME DS:DATA,CS:CODE
STARTVN:MOV AX,DATA
    MOV DS,AX

    LEA SI,pin
    LEA DI,setpin
    
    
    MOV BX,00

    MOV BL,pin+1
    MOV BH,setpin+1

    CMP BL,BH
    JNE L1V

    ADD SI,2
    ADD DI,2

  L2VN:MOV BL,BYTE PTR[SI]
    CMP BYTE PTR[DI],BL
    JNE L1VN
    INC SI
    INC DI
    CMP BYTE PTR[DI],"$"
    JNE L2VN
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H


    JMP L5VN

  L1VN:MOV AH,09H
    LEA DX,MSG2
    INT 21H
    JMP INVALID


 L5VN: 

     
     
     MOV BH,NUM1
    

    CMP BH,1
    JE p1
    
    CMP BH,2
    JE p2
    
    CMP BH,3
    JE p3
    
    CMP BH,4
    JE p4
    
    CMP BH,5
    JE p5 
    
    CMP BH,6
    JE p6
    
    
    p1:
       LEA DX,MSG3
    MOV AH,9
    INT 21H
    
     LEA DX,MSG4
    MOV AH,9
    INT 21H
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT 
    
    p2:
    
      LEA DX,MSG5
    MOV AH,9
    INT 21H
    
     LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT
    
    p3:
    
      LEA DX,MSG7
    MOV AH,9
    INT 21H
    
     LEA DX,MSG8
    MOV AH,9
    INT 21H
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT
    
    p4:
    
      LEA DX,MSG9
    MOV AH,9
    INT 21H
    
     LEA DX,MSG10
    MOV AH,9
    INT 21H 
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT
    
    p5:
    
      LEA DX,MSG11
    MOV AH,9
    INT 21H
    
     LEA DX,MSG12
    MOV AH,9
    INT 21H 
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT
           
     p6:
    
      LEA DX,MSG111
    MOV AH,9
    INT 21H
    
     LEA DX,MSG121
    MOV AH,9
    INT 21H 
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H 
    
     LEA DX,M30S
    MOV AH,9
    INT 21H
    
    LEA DX,M20S
    MOV AH,9
    INT 21H 
      
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE TOP
    
    CMP BH,0
    JE EXIT       
           
           
    
   INVALID:
   
    LEA DX,M67
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M68 
    MOV AH,9
    INT 21H 
    
    
    
    JMP EXIT 
    
        
    
    
     EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN