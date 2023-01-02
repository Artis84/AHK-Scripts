#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

Home::
    FileSelectFile, SelectedFile, 3, , Keywords file, Text Documents (*.txt)
    Click, 1196,126
    Loop read, %SelectedFile%
    {
        ; Sleep, 1
        SendInput, %A_LoopReadLine%
        ; Sleep, 1
        SendInput, {Enter}
        Loop
        {
            ImageSearch,,, 0, 0, 2560, 1440, wait.png
            if ErrorLevel = 0
                break ; image was found break loop and continue^

        }
        Random,rand, 1, 100
        Loop, %rand%{
            Send, {WheelDown}
        }
        Sleep, 1000
        Click, 929,330
        Click, 950,456
        Click, 979,749
        Click, 955,1186
        Loop
        {
            ImageSearch,,, 0, 0, 2560, 1440, video.png
            ImageSearch,,, 0, 0, 2560, 1440, short.png
            if ErrorLevel = 0
                break ; image was found break loop and continue^
            ; ImageSearch,,, 0, 0, 2560, 1440, channel.png
            ; if ErrorLevel = 0
            ;     break ; image was found break loop and continue^

        }
        Send, {Numpad1}
        Sleep, 1000
        Send, {Numpad3}
        Sleep, 1000
        Send, {Numpad5}
        Sleep, 1000
        Send, {Numpad7}
        Sleep, 1000
        Send, {Numpad9}
        ImageSearch,likeX,likeY, 0, 0, 2560, 1440, like.png
        Click, %likeX%, %likeY%
        SendInput, {Click 1196,126}
        SendInput, ^{a}
        SendInput, {Delete}
        ; SendInput, !{left}
        ; WinActivate, keywords.txt - ahk_scritps - Visual Studio Code
    }

End::
    Pause, Toggle

