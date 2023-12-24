#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2
#InstallKeybdHook
#Persistent
SetTimer, youtubeVideo, 1 ; Check every 1 second

youtubeVideo:
    MouseGetPos,mouseX,mouseY
    #IfWinActive, ahk_exe msedge.exe
        #IfWinActive, YouTube
            #If mouseX > 257 && mouseX < 2559 && mouseY > 42 && mouseY < 1439
                MButton::
                Click Right
                Loop
                {
                    ImageSearch, copyX, copyY, 0, 0, 2559, 1439, copy.png

                    if ErrorLevel = 0
                        break ; image was found break loop and continue
                } 
                Click %copyX%,%copyY%
                WinMaximize, PotPlayer
                SendInput, ^v
            return

