SetTimer, WinQuery, 250
Return

WinQuery() {
    Static flag := false
   If WinExist("ahk_class UnityWndClass")
        Flag := true
   If Flag && !WinExist("ahk_class UnityWndClass")
        ExitApp
}
#IfWinActive ahk_class UnityWndClass
~RButton:: Send +{Esc}
MButton::WinClose
#IfWinActive
XButton1::SoundSet, -4
XButton2::SoundSet, +4