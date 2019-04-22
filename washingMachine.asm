section .bss
	num resb 5

section .data
	machine_name db "Assembly Washing Machine 2A5",0xa
	lenmachine_name equ $-machine_name

	turn_onstatement db "------TURNING ON-----",0xa,0xa
	lenturn_onstatement equ $-turn_onstatement

	turn_Menu db "MENU",0xa
	lenturn_Menu equ $-turn_Menu

	washing_cycle db "1. Washing Cycle",0xa
	lenwashing_cycle equ $-washing_cycle

	clothingType db "2. clothing Type",0xa
	lenclothingType equ $-clothingType

	temperature db "3. Water Temperature",0xa
	lentemperature equ $-temperature

	info db "4. Information",0xa
	leninfo equ $-info
	
	hibernate db "5. Hibernate",0xa
	lenhibernate equ $-hibernate

	turn_off db "6. Turn Off",0xa
	lenturn_off equ $-turn_off

	userMsg db 0xa,"Enter Option: "
	lenuserMsg equ $-userMsg
	
	cycleMode db "------WASHING CYCLE-----",0xa
	lencycleMode equ $-cycleMode

	clothingMode db "------CHOOSE CLOTHING------",0xa
	lenclothingMode equ $-clothingMode

	Wash_temp db "------WASHING TEMPERATURE-----",0xa
	lenWash_temp equ $-Wash_temp

	inFo db "------WASHING MACHINE INFORMATION------",0xa
	leninFo equ $-inFo

	hiberNate db "------HIBERNATE------",0xa
	lenhiberNate equ $-hiberNate

	turnoFF db "------TURN OFF------",0xa
	lenturnoFF equ $-turnoFF

	normalCycle db "1. Normal Cycle",0xa
	lennormalCycle equ $-normalCycle
	
	permanentPress db "2. Permanent Press",0xa
	lenpermanentPress equ $-permanentPress

	delicateCycle db "3. Delicate Cycle",0xa
	lendelicateCycle equ $-delicateCycle
	
	specialCycles db "4. Special Cycle",0xa
	lenspecialCycles equ $-specialCycles

	cotton db "1. Cotton",0xa
	lencotton equ $-cotton

	nylon db "2. Nylon",0xa
	lennylon equ $-nylon
	
	silk db "3. Silk",0xa
	lensilk equ $-silk

	baby db "4. Baby Clothing",0xa
	lenbaby equ $-baby

	outdoor db "5. Outdoor Clothing",0xa
	lenoutdoor equ $-outdoor

	five db "1. 5 celcius",0xa
	lenfive equ $-five

	twenty db "2. 20 celcius",0xa
	lentwenty equ $-twenty

	fourty db "3. 40 celcius",0xa
	lenfourty equ $-fourty

	eighty db "4. 80 celcius",0xa
	leneighty equ $-eighty
	
section .text
	global _start
_start:
;defining the machine name
	mov edx, lenmachine_name
	mov ecx, machine_name
	mov ebx, 1
	mov eax, 4
	int 0x80

;defining the turning on
	mov edx, lenturn_onstatement
	mov ecx, turn_onstatement
	mov ebx, 1
	mov eax, 4
	int 0x80

;menu declaration
	mov edx, lenturn_Menu
	mov ecx, turn_Menu
	mov ebx, 1
	mov eax, 4
	int 0x80

;washing cycle 
	mov edx, lenwashing_cycle
	mov ecx, washing_cycle
	mov ebx, 1
	mov eax, 4
	int 0x80

;clothing type
	mov edx, lenclothingType
	mov ecx, clothingType
	mov ebx, 1
	mov eax, 4
	int 0x80

;temperature
	mov edx, lentemperature
	mov ecx, temperature
	mov ebx, 1
	mov eax, 4
	int 0x80

;info
	mov edx, leninfo
	mov ecx, info
	mov ebx, 1
	mov eax, 4
	int 0x80	
	
;hibernate
	mov edx, lenhibernate
	mov ecx, hibernate
	mov ebx, 1
	mov eax, 4
	int 0x80
	
;turnoff
	mov edx, lenturn_off
	mov ecx, turn_off
	mov ebx, 1
	mov eax, 4
	int 0x80

;User Input for Menu Option
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenuserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;check if user input is 1 then open washing mode
	mov bl, [ecx]
	cmp bl,'1'
	JE washing_Mode
	int 80h	

;chek if user is 2 then open clothing
	mov bl, [ecx]
	cmp bl,'2'
	JE clothings
	int 80h	

;chek if user is 2 then open temperature
	mov bl, [ecx]
	cmp bl,'3'
	JE temPerature
	int 80h	

;check if user is 3 then open info
	mov bl, [ecx]
	cmp bl,'3'
	JE Info_Label
	int 80h	

;check if user is 4 then open hibernate
	mov bl, [ecx]
	cmp bl,'4'
	JE hiBernate
	int 80h	
	
;check if user is 5 then open turn off
	mov bl, [ecx]
	cmp bl,'5'
	JE turnOFF
	int 80h	
	
;exiting from the system
	mov eax, 1
	int 0x80

washing_Mode:

	mov edx, lencycleMode
	mov ecx, cycleMode
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lennormalCycle
	mov ecx, normalCycle
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lenpermanentPress
	mov ecx, permanentPress
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lendelicateCycle
	mov ecx, delicateCycle
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lenspecialCycles
	mov ecx, specialCycles
	mov ebx, 1
	mov eax, 4
	int 0x80

;User Input for Cycle Option
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenuserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80
	
;exiting from the system
	mov eax, 1
	int 0x80


clothings:
	mov edx, lenclothingMode
	mov ecx, clothingMode
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lencotton
	mov ecx, cotton
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lennylon
	mov ecx, nylon
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lensilk
	mov ecx, silk
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lenbaby
	mov ecx, baby
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lenoutdoor
	mov ecx, outdoor
	mov ebx, 1
	mov eax, 4
	int 0x80

;User Input for clothing Option
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenuserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;exiting from the system
	mov eax, 1
	int 0x80	


temPerature:
	mov edx, lenWash_temp
	mov ecx, Wash_temp
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lenfive
	mov ecx, five
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lentwenty
	mov ecx, twenty
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, lenfourty
	mov ecx, fourty
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov edx, leneighty
	mov ecx, eighty
	mov ebx, 1
	mov eax, 4
	int 0x80

;exiting from the system
	mov eax, 1
	int 0x80

Info_Label:
	mov edx, leninFo
	mov ecx, inFo
	mov ebx, 1
	mov eax, 4
	int 0x80

;exiting from the system
	mov eax, 1
	int 0x80

hiBernate:
	mov edx, lenhiberNate
	mov ecx, hiberNate
	mov ebx, 1
	mov eax, 4
	int 0x80

;exiting from the system
	mov eax, 1
	int 0x80

turnOFF:
	mov edx, lenturnoFF
	mov ecx, turnoFF
	mov ebx, 1
	mov eax, 4
	int 0x80

;exiting from the system
	mov eax, 1
	int 0x80






