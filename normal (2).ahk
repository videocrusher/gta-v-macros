	#NoEnv                          ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%     ; Ensures a consistent starting directory.
#IfWinActive ahk_class grcWindow  ; Disables hotkeys when alt-tabbed or GTA is closed.
;                                                               ———Assign Hotkey and Delay Values———
EWO := "1"     ;   Commit Suicide
BST := "Xbutton1"                ;   Drops BST
ArmorKey := "3"                ;  
RPGAmmoKey := "``"               ;  
CeoStart := "0"               ;  
CeoGhost := "9"               ; 
CeoBribe := "8"               ;  
PassiveEwo := "6"               ;  
RapidSniper := "5"               ;  
MCCEO := "NumpadAdd"               ;  
CEOMC := "NumpadSub"               ;  
RPGReload := "4"               ;  
ORGTOP := "-"               ;  
NOORGTOP := "="               ;  
THERMALHELM := "Numpad7"          ; HAVE TO BE IN A CEO or MC
IntMenuDelay := 0             ; Sets value(ms) for delay for opening interaction menu.
KeySendDelay := 0              ; Sets value(ms) for delay between send key commands.
KeyPressDuration := 0           ; Sets value(ms) for duration each key press is held down.
;                                                                       —-Hotkey Code --
Hotkey, %EWO%, EWO     ;  
Hotkey, %ORGTOP%, ORGTOP     ;  
Hotkey, %NOORGTOP%, NOORGTOP     ;  
Hotkey, %BST%, BST     ;  
Hotkey, %THERMALHELM%, THERMALHELM    ; CEO OR MC
Hotkey, %ArmorKey%, Armor       ;  
Hotkey, %RPGAmmoKey%, RPGAmmo     ;  
Hotkey, %CeoStart%, CEO     ;  
Hotkey, %CeoGhost%, Ghost     ;  
Hotkey, %CeoBribe%, Bribe     ;
Hotkey, %RPGReload%, RapidRPG     ;  
Hotkey, %MCCEO%, MCCEO     ;  
Hotkey, %CEOMC%, CEOMC     ;  
Hotkey, %RapidSniper%, RapidSniper     ;  
Hotkey, %PassiveEwo%, PassiveEwo     ;  
Return
setkeydelay, KeySendDelay, KeyPressDuration             ; Sets delay(ms) between keystrokes issued. Arguments are delay between keystrokes and press duration, respectively.
; 
;                                                                         —-Macros --

;     THERMAL HELMET
THERMALHELM:                      ;
Send {m}          ;
sleep, IntMenuDelay       ;
Send {Down}{Down}{Down}{Down}{Return}{Down}{Return}{Down}{Down}{Down}{Down}{Space}{M}   ;
return     ;
;                                                                            —-Passive EWO-
;                                                                       Kill Your Self Passive
PassiveEwo:                     ; EWO Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {C down}{Up}{Up}{CapsLock}{CapsLock}{Return}{C up}    ; Keystrokes to EWO
return                          ;  
;

;											-Sniperrrr Quick Shot-
RapidSniper:                     ; Start CEO Macro
Send {numpad5}{9}    ; Keystrokes to CEO
return                          ;  
;
;															--RPGRAPID--
;                                       --Bind heavy to4 and explosives to 5-- have rpg 2nd in heavy list--
;                              -- or move to it with the 4 button until you hit the rpg, then do this --
;											-must press 3 each time before you shoot-
RapidRPG:                     ; Start RPG Macro
Send {numpad5}{Q}    ; Keystrokes to CEO
return                          ;  
;
;															--CEO-GHOST--
Ghost:                     ; Start Ghost Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Up}{Enter}    ; Keystrokes to CEO
return                          ;  
;
;															--CEO-GHOST--
Bribe:                     ; Start Bribe Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Enter}    ; Keystrokes to CEO
return                          ;  
;
;																--Start-CEO---
CEO:                     ; Start CEO Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {Down}{Down}{Down}{Down}{Down}{Down}{Enter}{Enter}{Enter}    ; 
return                          ;  
;                                                                            —-EWO-
;                                                                Shoot a weapon or punch first for fast
EWO:                     ; EWO Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {C down}{Up}{Up}{Return}{C up}    ; Keystrokes to EWO
return                          ;  
;                                                                            —-Bullshark—-
;                                                               Drop dat testo
BST:                                 ; BST Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {Enter}{Up}{Up}{Up}{Enter}{Down}{Enter}    ; Keystrokes to drop that shit
return                          ;  
;                                                                            —-Armor—-
;                                                               Drop some armor
Armor:                          ; Armor Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Up}{Up}{Enter}           ; 
return                          ;  

;                                                                     —-RpgAmmo—-
;                                            Buys rpg ammo, must be in CEO/MC and have rpg equipped
RPGAmmo:                         ; 
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {Down}{Down}{Down}{Enter}{Down}{Down}{Down}{Enter}{Left}{Down}{Right}{Down}{Down}{Enter}{Up}{Up}{Right}{Down}{Down}{Enter}{Up}{Up}{Right}{Down}{Down}{Enter}{Up}{Up}{Right}{Down}{Down}{Enter}{Up}{Up}{Right}{Down}{Down}{Enter}{m}                         ;  
return                                                                  ; 
;
;                                                                     —-CeotoMc--
;                                                  Swaps CEO to MC
MCCEO:                         ; 
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {Enter}{Up}{enter}
sleep, IntMenuDelay             ;  
Send {enter}                         ; 
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {down}{down}{down}{down}{down}{down}{enter}{enter}{enter}
return                                                                  ; 

;                                                                     —Mc to Ceo—-
;                                             Swaps MC to CEO
CEOMC:                         ; 
Send {m}                        ; Opens Menu
sleep, IntMenuDelay             ;  
Send {Enter}{Up}{enter}
sleep, IntMenuDelay             ;  
Send {enter}                         ; 
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {down}{down}{down}{down}{down}{down}{down}{enter}{enter}{enter}
return                                                                  ;  
;                                                      --ORG/MC to Passive --
ORGTOP:                         ; 
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {Enter}{Up}{enter}
sleep, IntMenuDelay             ;  
Send {enter}                         ;  
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {up}{enter}{esc}
return                                                                  ;  
;                                                         -No org/mc to passive -
NOORGTOP:                         ; 
Send {m}                        ; 
sleep, IntMenuDelay             ;  	
Send {Up}{enter}{esc}
return                                                                  ;  
;															--CEO-GHOST--
