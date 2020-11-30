; AHKCapslock 

#inputlevel,2
SetStoreCapslockMode, off
SetCapsLockState, AlwaysOff 
*Capslock::SetCapsLockState, AlwaysOff 
#Capslock::return ;win
!Capslock::return ;alt
+Capslock::return ;shift
^Capslock::return ;ctrl
$Capslock::
    s := GetKeyState("Capslock", "T")
    SetCapsLockState, AlwaysOff
    SetMouseDelay -1
    Send {Blind}{F24 Down}
    KeyWait, Capslock
    Send {Blind}{F24 up}
    if (A_ThisHotkey=="$Capslock" && A_TimeSinceThisHotkey<300 && %s%==0)
        SetCapsLockState, AlwaysOn
return 

#inputlevel,1
; Capslock ikjl up down left right
F24 & i::UP
F24 & k::Down
F24 & j::Left
F24 & l::Right
; Capslock+u = Home
F24 & u::Home
; Capslock+o = End 
F24 & o::End
; Capslock+n = PageUp
F24 & n::PgUp
; Capslock+m = PageDown
F24 & m::PgDn
; Capslock+h = Ctrl+Left (last word)
F24 & h::^Left
; Capslock+; = Ctrl+Right (next word)
F24 & `;::^Right
; Capslock+y = Ctrl+Up (Begin of the file)
F24 & y::^Home
; Capslock+p = Ctrl+Down (End of the file)
F24 & p::^End

; Capslock+[1~9-=] = F1~F12
F24 & 1::F1
F24 & 2::F2
F24 & 3::F3
F24 & 4::F4
F24 & 5::F5
F24 & 6::F6
F24 & 7::F7
F24 & 8::F8
F24 & 9::F9
F24 & 0::F10
F24 & -::F11
F24 & =::F12

; Alt+Enter = Ctrl+Enter
RAlt & Enter::^Enter

; Ctrl+Alt+T Windows Terminal
^!T::run "shell:AppsFolder\Microsoft.WindowsTerminal_8wekyb3d8bbwe!app"

; Ctrl+S reload the code for debug
; ~^s::
; sleep 500
; Reload
; return
