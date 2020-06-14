$NumpadMult::
  KeyWait, NumpadMult
  While !GetKeyState("W","A")
    Send, {W}{A}{S}{D}
  KeyWait, NumpadMult
Return

M::ExitApp
