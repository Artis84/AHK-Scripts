#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#InstallKeybdHook

SC120:: ; Mutekey hotkey - toggle mute state of active window
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    RunWait, cmd.exe /k svcl.exe /Switch %activeApp% && exit
Return
SC119::
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    volume = 15
    RunWait, cmd.exe /k svcl.exe /ChangeVolume %activeApp% %volume% && exit
Return
SC110::
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    volume = -15
    RunWait, cmd.exe /k svcl.exe /ChangeVolume %activeApp% %volume% && exit
Return
; MsgBox, %volume%