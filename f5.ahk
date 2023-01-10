#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

x::
    Loop{
        Send {f5}
        Sleep, 8000
    }