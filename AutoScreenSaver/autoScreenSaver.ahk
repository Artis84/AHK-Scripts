#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#InstallKeybdHook
Pause::
SendInput, {LWin}
WinWaitActive, ahk_exe SearchApp.exe
SendInput, Veille
Loop
{
    ImageSearch,,, 0, 0, 2560, 1440, logo.png
    if ErrorLevel = 0
        break ; image was found break loop and continue
}
SendInput, {Enter}
Loop
{
    ImageSearch, previewX, previewY, 0, 0, 2560, 1440, preview.png
    if ErrorLevel = 0
        break ; image was found break loop and continue
}
Click, %previewX%, %previewY%
