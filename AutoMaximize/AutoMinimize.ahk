; Check if Calculator is active, then maximize Notepad
#Persistent ; Keep the script running
#SingleInstance Force
SetTimer, CheckActiveWindow, 1 ; Check every 1 second

CheckActiveWindow:
    if (WinActive("ahk_exe Code.exe"))
    {
        WinMinimize, Cmder
    }
return
