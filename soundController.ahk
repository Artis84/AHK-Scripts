#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

; example
F1::setWindowVol(WinGet, OutputVar [, Cmd, WinTitle, WinText, ExcludeTitle, ExcludeText],"+10") ; add 10 (percent)
F2::setWindowVol("ahk_exe vlc.exe","-10") ; subtract 10 (percent)
F3::setWindowVol("ahk_exe vlc.exe",15) ; set to 15 (percent)

; function

#include <VA> ; https://autohotkey.com/board/topic/21984-vista-audio-control-functions/

setWindowVol(winName:="a",vol:="n"){
    if(vol=="n")
        return
    winGet,winPid,PID,% winName
    if !(volume:=GetVolumeObject(winPid)) ; get volume object of pid
        return
    vsign:=subStr(vol,1,1) ; get sign
    if(vsign="+"||vsign="-"){
        vol:=subStr(vol,2),vol/=100 ; remove sign from vol and make decimal

        VA_ISimpleAudioVolume_GetMasterVolume(volume,cvol) ; get current volume level
        if(vsign="+")
            vol:=cvol+vol>1?1:cvol+vol ; add given amount to current volume
        else if(vsign="-")
            vol:=cvol-vol<0?0:cvol-vol ; subtract given amount from current volume
    }else
        vol/=100
    VA_ISimpleAudioVolume_SetMasterVolume(volume,vol) ; set new volume level
    objRelease(volume)
}
