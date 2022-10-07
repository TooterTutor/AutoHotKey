#InstallKeybdHook
#NoEnv
#SingleInstance Force

; To prevent AutoHotkey from adding spaces before/after these characters,
; these variables are used below.

; Global chat prefix
ChatG = /y

; Command prefix
ChatC = /


    Gui +AlwaysOnTop

    Gui, Add, Button, x12 y250 w80 h40 gOnQuit, Quit?
    Gui, Add, Text, x280 y275, Application made by TooterTutor

    Gui, Add, Tab, x12 y9 w430 h230 , Pasteboard|Minecraft

    Gui, Tab, PasteBoard
    Gui, Add, Edit, x22 y39 w400 h190,


    Gui, Tab, Minecraft
    Gui, Font, S7 CDefault, Verdana

    Gui, Add, GroupBox, x22 y39 w180 h170 , Command Keys
    Gui, Add, CheckBox, x32 y59 w90 h20  gHomeChecked vHomeChecked, Enable Home
    Gui, Add, CheckBox, x32 y79 w90 h20  gSpawnChecked vSpawnChecked, Enable Spawn
    Gui, Add, CheckBox, x32 y99 w90 h20  gHubChecked vHubChecked, Enable Hub

    Gui, Add, CheckBox, x32 y139 w90 h20  gCheckChecked vCheckChecked, Enable Check
    Gui, Add, CheckBox, x32 y159 w90 h20  gWarpChecked vWarpChecked, Enable Warp
    Gui, Add, Checkbox, x32 y179 w90 h20 gVanishAChecked vVanishAChecked, Enable Vanish FJ
    Gui, Add, Checkbox, x32 y199 w90 h20 gVanishBChecked vVanishBChecked, Enable Vanish FQ

    Gui, Add, Text, x132 y59 w60 h20 +Center, Ctrl + 1
    Gui, Add, Text, x132 y79 w60 h20 +Center, Ctrl + 2
    Gui, Add, Text, x132 y99 w60 h20 +Center, Ctrl + 3
    Gui, Add, Text, x132 y139 w60 h20 +Center, Ctrl + 4
    Gui, Add, Text, x132 y159 w60 h20 +Center, Ctrl + 5
    Gui, Add, Text, x132 y179 w60 h20 +Center, Ctrl + 6
    Gui, Add, Text, x132 y199 w60 h20 +Center, Ctrl + 7

    Gui, Add, GroupBox, x232 y39 w190 h170, Chat
    Gui, Add, CheckBox, x242 y59 w100 h20  gLabel1Checked vLabel1Checked, Welcome Back
    Gui, Add, CheckBox, x242 y79 w100 h20  gLabel2Checked vLabel2Checked, Welcome to CV
    Gui, Add, CheckBox, x242 y99 w100 h20  gLabel3Checked vLabel3Checked, Got to Go
    Gui, Add, CheckBox, x242 y119 w100 h20 gLabel4Checked vLabel4Checked, Be Back in a Bit

    Gui, Add, Text, x352 y59 w60 h20 +Center, Ctrl + 1
    Gui, Add, Text, x352 y79 w60 h20 +Center, Ctrl + 2
    Gui, Add, Text, x352 y99 w60 h20 +Center, Ctrl + 3
    Gui, Add, Text, x352 y119 w60 h20 +Center, Ctrl + 4

    ; Generated using SmartGUI Creator 4.0
    Gui, Show, x360 y226 h297 w459, Multipurpose GUI
    Return

    GuiClose:
        ExitApp

    OnQuit:
        ExitApp


; ---------- Commands ----------


    HomeChecked:
        Gui, Submit, NoHide
        #If HomeChecked
        ^1::
        SetKeyDelay, 15
        SendMessage:
        Send, %ChatC%
        Sleep, 50
        Send, home{Enter}
        Return

    SpawnChecked:
        Gui, Submit, NoHide
        #If SpawnChecked
        ^2::
        SetKeyDelay, 15
        Send, %ChatC%
        Sleep, 50
        Send, spawn{Enter}
        Return

    HubChecked:
        Gui, Submit, NoHide
        #If HubChecked
        ^3::
        SetKeyDelay, 15
        Send, %ChatC%
        Sleep, 50
        Send, hub{Enter}
        Return

    CheckChecked:
        Gui, Submit, NoHide
        #If CheckChecked
        ^4::
        SetKeyDelay, 15
        Send, %ChatC%
        Sleep, 50
        Send, check
        Return

    WarpChecked:
        Gui, Submit, NoHide
        #If WarpChecked
        ^5::
        SetKeyDelay, 15
        Send, %ChatC%
        Sleep, 50
        Send, warp
        Sleep, 5
        Send, {Text} list
        Return

    VanishAChecked:
        Gui, Submit, NoHide
        #If VanishAChecked
        ^6::
        SetKeyDelay, 15
        Send, %ChatC%
        Sleep, 50
        Send, v{Enter}
        Sleep, 50
        Send, %ChatC%
        Sleep, 50
        Send, fj{Enter}
        Return

    VanishBChecked:
        Gui, Submit, NoHide
        #If VanishBChecked
        ^7::
        SetKeyDelay, 15
        Send, %ChatC%
        Sleep, 50
        Send, v{Enter}
        Sleep, 50
        Send, %ChatC%
        Sleep, 50
        Send, fq{Enter}
        Return


; ---------- Chat ----------

    Label1Checked:
        Gui, Submit, NoHide
        #If Label1Checked
        ^1::
        SetKeyDelay, 15
        Send, %ChatG%
        Sleep, 50
        Send, {Space} Welcome Back,
        Send, {Space}{Tab}
        Return

    Label2Checked:
        Gui, Submit, NoHide
        #If Label2Checked
        ^2::
        SetKeyDelay, 15
        Send, %ChatG%
        Sleep, 50
        Send, {Space} Welcome to Cubeville! {Enter}
        Return

    Label3Checked:
        Gui, Submit, NoHide
        #If Label3Checked
        ^3::
        SetKeyDelay, 15
        Send, %ChatG%
        Sleep, 50
        Send, {Space} Got to go{Enter}
        Return

    Label4Checked:
        Gui, Submit, NoHide
        #If Label4Checked
        ^4::
        SetKeyDelay, 15
        Send, %ChatG%
        Sleep, 50
        Send, {Space} Be back in a bit{Enter}
        Return
