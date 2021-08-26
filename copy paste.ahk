;SetKeyDelay, 300 ;Sets the delay(Time in milliseconds) that will occur after each keystroke sent by Send and ControlSend. uncomment if something wrong
^+c:: ; ctrl+y
clipboard = ; Empty the clipboard
Send ^c
ClipWait 3 ; Waits 3 sec until the clipboard contains data.
Send !{Tab} ; Switch between the two most recent tasks (is it notepad?)
Sleep, 200
Send {End} ; move to end line
Send {Enter} ; new line
Send {Enter} ; new line separator
Send ^v
Sleep, 200
Send !{Tab} ; Switch between the two most recent tasks (moving back)