section .data
	proj_name db "Hp Project Series A3d"
	lenproj_name equ $-proj_name

	turn_on db "1. Turn_on"
	lenTurnOn equ $-turn_on

	userMsg db "Enter Option: "
	lenUserMsg equ $-userMsg

	dispMsg db 'You have entered: '
	lenDispMsg equ $-dispMsg

	oning db 'Turning On...'
	lenOning equ $-oning

	onMsg db 'Welcome, User...'
	lenOnMsg equ $-onMsg

	view_mode db "Welcome -- MENU"
	lenview_mode equ $-view_mode
	
	cabel_source db "1. Source"
	len_cable_source equ $-cabel_source

;source values
	Hdmi_mode db "---SOURCE SETTINGS---"
	lenHdmi equ $-Hdmi_mode
;source value ends here

	hdmi_thesource db "1. HDMI"
	lenhdmi_thesource equ $-hdmi_thesource

	vga_thesource db "2. VGA"
	lenvga_thesource equ $-vga_thesource

	usb_thesource db "3. USB"
	lenusb_thesource equ $-usb_thesource

	settings db "2. Settings"
	lensettings equ $-settings

	selected_HDMI db "View Mode Is Set To HDMI"
	lenselected_HDMI equ $-selected_HDMI
	
	selected_VGA db "View Mode Is Set To VGA"
	lenselected_VGA equ $-selected_VGA

	selected_USB db "View Mode Has Been Set To USB"
	lenselected_USB equ $-selected_USB

;settings values starts here
	setting_menu db "---SETTINGS MENU---"
	lensetting_menu equ $-setting_menu
;settings values ends here

	adjust_image db "1. Adjust Image"
	lenadjust_image equ $-adjust_image

	change_resolution db "2. Change Resolution"
	lenchange_resolution equ $-change_resolution

	info db "3. Info"
	leninfo equ $-info

;info values starts here
	info_menu db "---PROJRCTOR INFORMATION---"
	leninfo_menu equ $-info_menu
;info values ends here

	reset db "4. Reset"
	lenReset equ $-reset

;reset values starts here
	reset_menu db "---RESET MENU---"
	lenreset_menu equ $-reset_menu
;reset values ends here

	powerOff db "5. Power Off"
	lenpowerOff equ $-powerOff

;poweroff mennu starts here	
	poweroff_menu db "---POWER OFF MENU---"
	lenpoweroff_menu equ $-poweroff_menu
;poweroff menu ends here

	hibernate db "6. Hibernate"
	lenhibernate equ $-hibernate

;hibernate menu starts here
	hibernate_menu db "---HIBERNATE MENU---"
	lenhibernate_menu equ $-hibernate_menu
;hibernate menu ends here

	projector_about db "Assembly language Project 1"
	lenprojector_about equ $-projector_about

	groupname db "Group M"
	lengroupname equ $-groupname

	sure_poweroff db "Are you sure you want to Power Off(yes or no)?"
	lensure_poweroff equ $-sure_poweroff

	sure_reset db "Are you sure you want to Reset(yes or no)?"
	lensure_reset equ $-sure_reset

	sure_hibernate db "Are you sure you want to hibernate(yes or no)?"
	lensure_hibernate equ $-sure_hibernate

	to_Main_Menu db "1. BACK TO MENU"
	lento_Main_Menu equ $-to_Main_Menu


section .bss
	num resb 5

section .text
	global _start
	
_start:
; projector name text declaration
	mov eax,4
	mov ebx,1
	mov ecx, proj_name
	mov edx,lenproj_name
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;Turn on text
	mov eax,4
	mov ebx,1
	mov ecx,turn_on
	mov edx, lenTurnOn
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, num
	mov edx,5
	int 0x80

;Enter Number Text declaration
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

; dislay message text declaration

	mov eax,4
	mov ebx, 1
	mov ecx,dispMsg
	mov edx, lenDispMsg
	int 80h
	
	mov eax,4
	mov ebx, 1
	mov ecx, num
	mov edx, 5

;checking if user input is 1
	mov bl, [ecx]
	cmp bl,'1'
	JE L7
	int 80h

;end declarations
	mov eax,1
	mov ebx,0
	int 80h

L7:
;Turning on progress message 
	mov eax,4
	mov ebx,1
	mov ecx, oning
	mov edx, lenOning
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;welcome user message
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx, 1
	mov ecx,onMsg
	mov edx, lenOnMsg
	int 80h

	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h



;choose view mode
	mov eax,4
	mov ebx,1
	mov ecx, view_mode
	mov edx,lenview_mode
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h
	

;other HP projector options
	mov eax,4
	mov ebx,1
	mov ecx,cabel_source
	mov edx,len_cable_source
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, num
	mov edx,5
	int 0x80

	mov eax,4
	mov ebx,1
	mov ecx,settings
	mov edx, lensettings
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, num
	mov edx,5
	int 0x80

	mov eax,4
	mov ebx,1
	mov ecx,info
	mov edx, leninfo
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, num
	mov edx,5
	int 0x80

	mov eax,4
	mov ebx,1
	mov ecx,reset
	mov edx, lenReset
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, num
	mov edx,5
	int 0x80

	mov eax,4
	mov ebx,1
	mov ecx,powerOff
	mov edx, lenpowerOff
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, num
	mov edx,5
	int 0x80

	mov eax,4
	mov ebx,1
	mov ecx,hibernate
	mov edx, lenhibernate
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, num
	mov edx,5
	int 0x80

;Enter Menu Option declaration
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;check if user input is 1 then open source
	mov bl, [ecx]
	cmp bl,'1'
	JE source
	int 80h	

;chek if user is 2 then open setting
	mov bl, [ecx]
	cmp bl,'2'
	JE settings_label
	int 80h	

;check if user is 3 then open info
	mov bl, [ecx]
	cmp bl,'3'
	JE info_label
	int 80h	

;check if user is 4 then open reset
	mov bl, [ecx]
	cmp bl,'4'
	JE reset_label
	int 80h	

;check if user is 5 then open Power Off
	mov bl, [ecx]
	cmp bl,'5'
	JE powerOff_label
	int 80h	

;check if user is 6 then open hibernate
	mov bl, [ecx]
	cmp bl,'6'
	JE hibernate_label
	int 80h	

;LE ends here

;source starts here

source:
	mov eax,4
	mov ebx,1
	mov ecx, Hdmi_mode
	mov edx,lenHdmi
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, hdmi_thesource
	mov edx,lenhdmi_thesource
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, vga_thesource
	mov edx,lenvga_thesource
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, usb_thesource
	mov edx,lenusb_thesource
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;Enter Number Text declaration
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;checking if user input is 1
	mov bl, [ecx]
	cmp bl,'1'
	JE choosen_hdmi_option
	int 80h

;checking if user input is 2
	mov bl, [ecx]
	cmp bl,'2'
	JE choosen_vga_option
	int 80h

;checking if user input is 3
	mov bl, [ecx]
	cmp bl,'3'
	JE choosen_usb_option
	int 80h

;end declarations
	mov eax,1
	mov ebx,0
	int 80h
	
;source ends here

;choosen HDMI option starts here

choosen_hdmi_option: 
	mov eax,4
	mov ebx,1
	mov ecx, selected_HDMI
	mov edx,lenselected_HDMI
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, to_Main_Menu
	mov edx,lento_Main_Menu
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;Enter Number Text declaration
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;checking if user input is 1
	mov bl, [ecx]
	cmp bl,'1'
	JE L7
	int 80h

;end declarations
	mov eax,1
	mov ebx,0
	int 80h
	
;HDMi ends here

;choosen VGA option starts here
choosen_vga_option:
	mov eax,4
	mov ebx,1
	mov ecx, selected_VGA
	mov edx,lenselected_VGA
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h
	
	mov eax,4
	mov ebx,1
	mov ecx, to_Main_Menu
	mov edx,lento_Main_Menu
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;Enter Number Text declaration
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;checking if user input is 1
	mov bl, [ecx]
	cmp bl,'1'
	JE L7
	int 80h

;end declarations
	mov eax,1
	mov ebx,0
	int 80h
	
;VGA ends here

;choosen USB option starts here
choosen_usb_option:
	mov eax,4
	mov ebx,1
	mov ecx, selected_USB
	mov edx,lenselected_USB
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, to_Main_Menu
	mov edx,lento_Main_Menu
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;Enter Number Text declaration
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;checking if user input is 1
	mov bl, [ecx]
	cmp bl,'1'
	JE L7
	int 80h

;end declarations
	mov eax,1
	mov ebx,0
	int 80h
	
;USB ends here

;settins starts here
settings_label:
	mov eax,4
	mov ebx,1
	mov ecx, setting_menu
	mov edx,lensetting_menu
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, adjust_image
	mov edx,lenadjust_image
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, change_resolution
	mov edx,lenchange_resolution
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;end declarations
	mov eax,1
	mov ebx,0
	int 80h
;settings ends here

;info starts here
info_label:
	mov eax,4
	mov ebx,1
	mov ecx, info_menu
	mov edx,leninfo_menu
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, projector_about
	mov edx,lenprojector_about
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, groupname
	mov edx,lengroupname
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;end declarations
	mov eax,1
	mov ebx,0
	int 80h
;info ends here

;reset starts here
reset_label:
	mov eax,4
	mov ebx,1
	mov ecx, reset_menu
	mov edx,lenreset_menu
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, sure_reset
	mov edx,lensure_reset
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;Enter reset option
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

;end declarations
	mov eax,1
	mov ebx,0
	int 80h
;reset ends here

;power off starts here
powerOff_label:
	mov eax,4
	mov ebx,1
	mov ecx, poweroff_menu
	mov edx,lenpoweroff_menu
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, sure_poweroff
	mov edx,lensure_poweroff
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;Enter poweroff option
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80


;end declarations
	mov eax,1
	mov ebx,0
	int 80h
;power off ends here

;hibernate starts here
hibernate_label:
	mov eax,4
	mov ebx,1
	mov ecx, hibernate_menu
	mov edx,lenhibernate_menu
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx, sure_hibernate
	mov edx,lensure_hibernate
	int 80h
	
	mov eax,3
	mov ebx,2
	mov ecx, num
	mov edx, 5
	int 80h

;Enter hibernate option
	mov eax,4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h
	
	mov eax,3
	mov ebx, 2
	mov ecx,num
	mov edx,5
	int 0x80

	
;end declarations
	mov eax,1
	mov ebx,0
	int 80h
;hibernate ends here


