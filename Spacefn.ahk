;Define CapsLock to Ctrl
CapsLock::Ctrl
LCtRL::CapsLock	

LShift & Esc::~
RShift & Esc::~

;SpaceFn
#inputlevel,2
$Space::
    SetMouseDelay -1
    KeyWait, Space, T0.150
    ; detect short space keypress -> space
    if (A_ThisHotkey="$Space" && A_TimeSinceThisHotkey<150) {
    	Send {Blind}{Space DownR}
    	return
    }
    ; mode F24
    Send {Blind}{F24 DownR}
    KeyWait, Space
    if (A_ThisHotkey="$Space") { ; && A_TimeSinceThisHotkey<150
        ;MsgBox, %A_PriorKey%---%A_ThisHotkey%-%A_TimeSinceThisHotkey%
        Send {Blind}{Space DownR}
        Send {Blind}{F24 up}
        return    
    }
    Send {Blind}{F24 up}
    return


#inputlevel,1
F24 & d::Del
F24 & Esc::`

F24 & i::Up
F24 & k::Down
F24 & j::Left
F24 & l::Right

F24 & u::PgUp
F24 & o::PgDn

F24 & a::Home
F24 & e::End

F24 & p::Printscreen

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

;Ctrl+S 重加载
; ~^s::
; sleep 500
; Reload
; return
