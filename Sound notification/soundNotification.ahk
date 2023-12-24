#Persistent ; Keep the script running
#SingleInstance Force
SetTimer, CheckActiveWindow, 1

CheckActiveWindow:
    Loop
    {
        ; Capture the screen and look for the specified image
        ImageSearch, notificationX, notificationY, 0, 0, 2259, 1439, notification.png

        ; Check if the image is found
        if ErrorLevel = 0
        {
            ; Replace this path with the location of your sound file (supports various formats like .wav, .mp3, etc.)
            SoundPlay, GOAL.mp3
            Sleep, 15000 ; Pause for 5 seconds to prevent immediate re-detection
        }
    }

return

