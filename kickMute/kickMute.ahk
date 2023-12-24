#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2
#InstallKeybdHook

#IfWinActive,| Kick
    MButton::
        {
            Loop,1
            {
                ImageSearch, playerX, playerY, 0, 0, 1919, 1079, player.png

                if ErrorLevel = 0
                    break ; image was found break loop and continue
            }
            Click
            SendInput, m
            return
        }

