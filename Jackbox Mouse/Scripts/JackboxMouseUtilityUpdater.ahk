Run JackboxUtility.exe
SetTimer, WinQuery, 250
Return

WinQuery() {
    Static flag := false
   If WinExist("Jackbox Utility ahk_exe jackbox_patcher.exe")
        Flag := true
   If Flag && !WinExist("Jackbox Utility ahk_exe jackbox_patcher.exe")
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