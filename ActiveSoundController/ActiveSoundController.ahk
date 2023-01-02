#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#InstallKeybdHook

Volume_Mute:: ; Mutekey hotkey - toggle mute state of active window
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    RunWait, cmd.exe /k mode con: cols=20 lines=20 && color 64 && svcl.exe /Stdout /GetMute %activeApp% && svcl.exe /Switch %activeApp% && exit
; RunWait, cmd.exe /k svcl.exe /Stdout /GetPercent %activeApp%
Return
SC119::
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    volume = 5
    RunWait, cmd.exe /k mode con: cols=20 lines=20 && color 64 && svcl.exe /Stdout /GetPercent %activeApp% && svcl.exe /ChangeVolume %activeApp% %volume% && exit
; RunWait, cmd.exe /k svcl.exe /Stdout /GetPercent %activeApp%
Return
SC110::
    WinGet, activeApp, ProcessName, A ;get the active app procees name and store it to the %activeApp% variable
    volume = -20
    RunWait, cmd.exe /k mode con: cols=20 lines=20 && color 64 && svcl.exe /Stdout /GetPercent %activeApp% && svcl.exe /ChangeVolume %activeApp% %volume% && exit
; RunWait, cmd.exe /k svcl.exe /Stdout /GetPercent %activeApp%
Return
; MsgBox, %volu