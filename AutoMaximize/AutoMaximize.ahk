; Check if Calculator is active, then maximize Notepad
#Persistent ; Keep the script running
#SingleInstance Force
SetTimer, CheckActiveWindow, 2 ; Check every 1 second

CheckActiveWindow:
    IfWinNotActive, ahk_exe Code.exe
        IfWinActive, Android Emulator - Pixel_6_API_33:5554 ; Get the MinMax attribute of the Notepad window
    {
        Loop
        {
            ImageSearch, cmderX, cmderY, 0, 0, 2560, 1440, cmder.png
            if ErrorLevel = 0
                break ; image was found break loop and continue
        }
        Click, %cmderX%, %cmderY%
    }
return
