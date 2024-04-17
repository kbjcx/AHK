#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_exe Obsidian.exe")
    CapsLock & e:: {
        Send "^e"
    }

    ; Tab:: {
    ;     Send "^{Tab}"
    ; }

    CapsLock & m:: {
        Send "^!+m"
    }

    CapsLock & a:: {
        Send "^!+a"
    }

    CapsLock & r:: {
        Send "^!+r"
    }

    CapsLock & Left:: {
        Send "!^+{Left}"
    }

    CapsLock & Right:: {
        Send "!^+{Right}"
    }
#HotIf