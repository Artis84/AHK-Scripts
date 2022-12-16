#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

r::
    ; ImageSearch, FoundX, FoundY, 0, 0, 2560, 1440, ME1LTeMs8Y.png
    ; msgbox %FoundX% - %FoundY%
    ; FormatTime, TimeString, T12, Time
    ; if A_Hour = 02
    ;     MsgBox The current 24-hour time is %TimeString%.
    ; Click, 2 20
    Send, {LWinDown}
