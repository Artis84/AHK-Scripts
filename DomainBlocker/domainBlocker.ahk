#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#InstallKeybdHook
!SC029::
    FileAppend,`nAnother line., text.txt