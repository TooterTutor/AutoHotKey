#InstallKeybdHook               ; Better keyboard handling
#NoEnv                          ; Better compatibility
#SingleInstance Force           ; No dialog when restarting


; ------------ Gui Layout ------------
    Gui +AlwaysOnTop

    Gui, Add, Text, x12 y9 w170 h20 , Choose which hotkeys are enabled
    Gui, Add, Checkbox, x12 y29 w140 h20 vLabel1 gLabel1, Enable Welcome Back?
    Gui, Add, Checkbox, x12 y49 w140 h20 vLabel2 gLabel2, Enable Welcome to CV?
    Gui, Add, Checkbox, x12 y69 w140 h20 vLabel3 gLabel3, Enable Got to Go?
    Gui, Add, Checkbox, x12 y89 w140 h20 vLabel4 gLabel4, Enable Be Back in a Bit?

    Gui, Add, Text, x174 y29 w40 h20, (Ctrl + 1)
    Gui, Add, Text, x174 y49 w40 h20, (Ctrl + 2)
    Gui, Add, Text, x174 y69 w40 h20, (Ctrl + 3)
    Gui, Add, Text, x174 y89 w40 h20, (Ctrl + 4)

    Gui, Add, Button, x6 y+5 w100 h30 gQuitAll, Quit Application?
    
    Gui, Font, S6, Verdana

    Gui, Add, Text, x200 y130, Application made by TooterTutor for Pizza4001 

    ; Generated using SmartGUI Creator 4.0
    Gui, Show, h147 w405, Cubeville Hotkey Window (Pizza4001 Edition!)
    Return

    GuiClose:
    ExitApp


; ------------ Lables & Variables ------------
    QuitAll:
        Gui, Submit
        ExitApp

    Label1:
        Gui, Submit, NoHide
        #If Label1
        ^1::
        SetKeyDelay, 15
        Send, /y
        Sleep, 250
        Send, {Space} Welcome Back!
        Send, {Enter}
        Return

    Label2:
        Gui, Submit, NoHide
        #If Label2
        ^2::
        SetKeyDelay, 15
        Send, /y
        Sleep, 250
        Send, {Space} Welcome to CV!
        Send, {Enter}
        Return

    Label3:
        Gui, Submit, NoHide
        #If Label3
        ^3::
        SetKeyDelay, 15
        Send, /y
        Sleep, 250
        Send, {Space} Got to go
        Send, {Enter}
        Return
    
    Label4:
        Gui, Submit, NoHide
        #If Label4
        ^4::
        SetKeyDelay, 15
        Send, /y
        Sleep, 250
        Send, {Space} Be back in a bit
        Send, {Enter}
        Return