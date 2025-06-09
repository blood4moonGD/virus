Set objShell = CreateObject("WScript.Shell")

' Show troll message
MsgBox "You've been trolled!!!", vbOKOnly + vbExclamation, "Warning"

' Play YouTube link hidden in background
objShell.Run "cmd /c start /min https://www.youtube.com/watch?v=BsIa_LKojJI"

' Wait for video duration (now set to 40 seconds)
WScript.Sleep 40000

' Shutdown system
objShell.Run "shutdown -s -t 0"