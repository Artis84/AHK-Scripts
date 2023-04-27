#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

Loop
{
    ImageSearch,,, 0, 0, 2560, 1440, Razer.png
    if ErrorLevel = 0
        break ; image was found break loop and continue
}

WinClose, Razer Synapse