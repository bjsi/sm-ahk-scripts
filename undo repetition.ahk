; Supermemo delete components shortcut
; creds to the dot net master

#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

WinActivate ahk_class TContents
Send !c
WinWaitActive ahk_class TContents

Send {Alt}emed

WinWaitActive ahk_class TChecksDlg
Send {Tab}{Tab}
Send ^a
Send {Home}{Space}
Send {End}{Space}