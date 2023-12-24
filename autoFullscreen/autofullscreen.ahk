; Check if Calculator is active, then maximize Notepad
#Persistent ; Keep the script running
#SingleInstance Force
SetTimer, FullScreen, 1 ; Check every 1 second

FullScreen:
    {
        Loop
        {
            ImageSearch, fullscreenX, fullscreenY, 0, 0, 1979, 1079, fullscreen.png

            if ErrorLevel = 0
                break ; image was found break loop and continue
        } 
        SendInput, f
        Sleep, 500

    }
return

End::
    Pause, Toggle