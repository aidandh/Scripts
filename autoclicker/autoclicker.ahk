#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

global ClickWait = 50

c::
    While GetKeyState(A_ThisHotkey) {
        Click
        Sleep ClickWait
    }
    Return

Shift & Esc::ExitApp