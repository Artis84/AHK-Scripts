#NoEnv
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#InstallKeybdHook
loop{
    if(A_Hour == 18){
        ; $::
        BlockInput, On
        if WinExist("ahk_class NotifyIconOverflowWindow")
            WinClose
        Send, #d
        Sleep, 1000
        Send, #b
        Loop
        {
            ImageSearch, trailX, trailY, 0, 0, 2560, 1440, trail.png
            if ErrorLevel = 0
                break ; image was found break loop and continue
        }
        Click, %trailX%, %trailY%
        Loop
        {
            ImageSearch, razerX, razerY, 0, 0, 2560, 1440, razer.png
            if ErrorLevel = 0
                break ; image was found break loop and continue
        }
        MouseMove, %razerX%, %razerY%
        Click, Right
        Loop
        {
            ImageSearch, synapseX, synapseY, 0, 0, 2560, 1440, synapse.png
            if ErrorLevel = 0
                break ; image was found break loop and continue
        }
        MouseMove, %synapseX%, %synapseY%
        Click
        Loop
        {
            ImageSearch, profilX, profilY, 0, 0, 2560, 1440, dropdown.png
            if ErrorLevel = 0
                break ; image was found break loop and continue
        }
        Click, %profilX%, %profilY%
        Click, %profilX%, %profilY%
        Click, %profilX%, %profilY%
        ; if (A_Hour >= 18 || A_Hour < 08 ){
        Send, {Down}
        Send, {Enter}
        Loop
        {
            ImageSearch, profilX, profilY, 0, 0, 2560, 1440, lightsOn.png
            if ErrorLevel = 0
                break ; image was found break loop and continue
        }
        ; } Else{
        ;     Send, {Up}
        ;     Send, {Enter}
        ;     Loop
        ;     {
        ;         ImageSearch, profilX, profilY, 0, 0, 2560, 1440, lightsOff.png
        ;         if ErrorLevel = 0
        ;             break ; image was found break loop and continue
        ;     }
        ; }
        WinClose, Razer Synapse
        BlockInput, Off
        return

    }

}