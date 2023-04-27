#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#InstallKeybdHook

Volume_Mute:: ; Mutekey hotkey - toggle mute state of active window
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    RunWait, cmd.exe /k mode con: cols=20 lines=20 && color 64 && svcl.exe /Switch %activeApp% && svcl.exe /Stdout /GetMute %activeApp% && exit
; RunWait, cmd.exe /k svcl.exe /Stdout /GetPercent %activeApp%
Return
SC119::
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    volume = 10
    RunWait, cmd.exe /k mode con: cols=20 lines=20 && color 64 && svcl.exe /ChangeVolume %activeApp% %volume% && svcl.exe /Stdout /GetPercent %activeApp% && exit
; RunWait, cmd.exe /k svcl.exe /Stdout /GetPercent %activeApp%
Return
SC110::
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    volume = -10
    RunWait, cmd.exe /k mode con: cols=20 lines=20 && color 64 && svcl.exe /ChangeVolume %activeApp% %volume% && svcl.exe /Stdout /GetPercent %activeApp% && exit
; RunWait, cmd.exe /k svcl.exe /Stdout /GetPercent %activeApp%
Return
; MsgBox, %volu