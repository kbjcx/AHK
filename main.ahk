#Requires AutoHotkey v2.0
#Usehook

#include ./obsidian.ahk
; #InstallKeybdHook

; 关闭CapsLock
SetCapsLockState "AlwaysOff"

; 改变CapsLock切换方式
+CapsLock::CapsLock

^CapsLock::
!CapsLock:: {

}

CapsLock::{
    Send "{Esc}"
}

; 打开微信Ctrl + Alt + Shift + w
CapsLock & w:: {
    Send "^+!w"
}

; 输出->符号, 方便C++编程
CapsLock & -::
{
    SendText "->"
}

; 输出#include , 便于C++编程
CapsLock & 3:: {
    SendText "#include "
}

; 输出!=，便于编程
CapsLock & 1:: {
    SendText "!="
}

; 没有Alt则删除光标前的所有文字, 有Alt则删除整行文字
CapsLock & BackSpace::
{
    if GetKeyState("Alt") = 0
        Send "+{Home}{BS}"
    else
        Send "{End}+{Home}{BS}"
}

; 打开quicker, Ctrl+Alt+Shift+q
CapsLock & q::
{
    Send "^+!q"
}

; 在行中直接换行
CapsLock & Enter::
{
    Send "{End}{Enter}"
}

; Home
CapsLock & [::
{
    Send "{Home}"
}

; End
CapsLock & ]::
{
    Send "{End}"
}

; Snipaste
CapsLock & s:: {
    Send "+^!s"
}

; 打开关闭Obsidian
CapsLock & o:: {
    Send "+^!o"
}