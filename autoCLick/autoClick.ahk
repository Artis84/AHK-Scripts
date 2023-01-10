#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

w::
    Loop{
        Sleep 5000
        Send, !{Tab}
        Loop
        {
            ImageSearch,rightArrowX,rightArrowY, 0, 0, 1920, 1080, rightArrow.png
            if ErrorLevel = 0
                break ; image was found break loop and continue^

        }
        Click, %rightArrowX%, %rightArrowY%
        Sleep, 500
        Send, !{Tab}
        Sleep, 500
        MouseMove, 1608, 744
    }
x::
    Pause, Toggle

