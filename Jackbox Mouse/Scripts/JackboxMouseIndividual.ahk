SetTimer, WinQuery, 250
Return

WinQuery() {
    Static flag := false
   If WinExist("ahk_class WinAPI_App_Window_Class")
        Flag := true
   If Flag && !WinExist("ahk_class WinAPI_App_Window_Class")
        ExitApp
}
#IfWinActive ahk_class WinAPI_App_Window_Class
~RButton:: Send +{Esc}
MButton::WinClose
#IfWinActive
XButton1::SoundSet, -4
XButton2::SoundSet, +4