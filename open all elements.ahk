; Supermemo open all elements in the subset browser

#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

WinActivate ahk_class TContents
Send !c
WinWaitActive ahk_class TContents

Send {Alt}va

ExitApp