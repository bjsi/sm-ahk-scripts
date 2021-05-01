#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

controlArray := ["TToolBar1", "TToolBar2", "TToolBar3", "TToolBar4", "TToolBar5", "TToolBar6", "TToolBar7"]

ToolBarIsTop(barName) {
    ControlGetPos,x,y,w,h,%barName%,ahk_class TElWind
    return x == 11
}

for i, val in controlArray {
    if (ToolBarIsTop(val)) {
        ControlClick,%val%,ahk_class TElWind,,,NA,x700 y3
    }
}