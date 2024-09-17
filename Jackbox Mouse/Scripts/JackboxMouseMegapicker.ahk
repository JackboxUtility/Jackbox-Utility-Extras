Run "The Jackbox Megapicker.exe"
SetTimer, WinQuery, 250
Return

WinQuery() {
    Static flag := false
   If WinExist("The Jackbox Megapicker ahk_exe The Jackbox Megapicker.exe")
        Flag := true
   If Flag && !WinExist("The Jackbox Megapicker ahk_exe The Jackbox Megapicker.exe")
        ExitApp
}
#IfWinActive ahk_class WinAPI_App_Window_Class
~RButton:: Send +{Esc}
MButton::WinClose
#IfWinActive
#IfWinActive ahk_class UnityWndClass
~RButton:: Send +{Esc}
MButton::WinClose
#IfWinActive
#IfWinActive ahk_exe jackbox_patcher.exe
~RButton:: Send +{Esc}
#IfWinActive
#IfWinActive ahk_exe "The Jackbox Megapicker.exe"
~RButton:: Send +{Esc}
#IfWinActive
XButton1::SoundSet, -4
XButton2::SoundSet, +4