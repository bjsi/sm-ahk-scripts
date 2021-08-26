#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; All taken from Alexis' image occlusion editor for SuperMemo
; https://github.com/supermemo/SuperMemoScripts/blob/master/supermemo_17.ahk


ShowWarning(str)
{
  MsgBox % "Warning: " . str
}


; Window-related

GroupAdd, SuperMemo, ahk_class TBrowser ;Browser
GroupAdd, SuperMemo, ahk_class TContents ;Content Window (Knowledge Tree)
GroupAdd, SuperMemo, ahk_class TElWind ;Element window
GroupAdd, SuperMemo, ahk_class TSMMain ;Toolbar

SafeActivateWdw(wdwClass, waitActive)
{
  if WinExist("ahk_class " . wdwClass)
  {
    WinActivate ahk_class %wdwClass%
    
    if (waitActive)
      WinWaitActive ahk_class %wdwClass%
    
    return true
  }
  
  return false
}

ActivateBrowserWdw(waitActive = true, notify = false)
{
  found := SafeActivateWdw("TBrowser", waitActive)
  
  if (!found && notify)
    ShowWarning("No Browser Window found.")
    
  return found
}

ActivateContentWdw(waitActive = true, notify = false)
{
  found := SafeActivateWdw("TContents", waitActive)
  
  if (!found && notify)
    ShowWarning("No Content Window found.")
    
  return found
}

ActivateElementWdw(waitActive = true, notify = false)
{
  found := SafeActivateWdw("TElWind", waitActive)
  
  if (!found && notify)
    ShowWarning("No Element Window found.")
    
  return found
}

ActivateToolbarWdw(waitActive = true, notify = false)
{
  found := SafeActivateWdw("TSMMain", waitActive)
  
  if (!found && notify)
    ShowWarning("No Toolbar Window found.")
    
  return found
}

; SM Commands

SetHook()
{
  if (ActivateContentWdw(true, true))
    Send, % SCSetHook
}

ActivateContentWdw(false, false)
Send !c
WinWaitActive ahk_class TContents

Send {Alt}wll


