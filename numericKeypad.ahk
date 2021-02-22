;Author: UnintegratedCircuit
;
;Basic implementation (enough to enter alt codes with) of a numeric keypad for the Lenovo
;ThinkPad T430. This includes conditional remapping to form a 'NUM LOCK' key, a functioning
;'RIGHT ALT' key, and proper numpad keys from the standard number keys that lay across the top
;of the keyboard.
;
;You are free to use this; however, I claim no responsibility for any damage you cause to your
;laptop/PC (or others'). By running this script thorugh AutoHotKey, you do so at your own risk.
;
;Feel free to repost this and spread the word around, although you must leave this header text
;in place, and as is. Also, feel free to check out my electronics website/blog thing where I
;document my various projects (although progress is slow due to other commitments). Link below:
;
;https://unintegratedcircuit.wixsite.com/unintegratedcircuit

^Insert::NumLock

#If GetKeyState("NumLock", "T")
	LControl & RAlt::Send {RAlt down}
	*=::Send {NumpadAdd}
	*0::Send {Numpad0}
	*1::Send {Numpad1}
	*2::Send {Numpad2}
	*3::Send {Numpad3}
	*4::Send {Numpad4}
	*5::Send {Numpad5}
	*6::Send {Numpad6}
	*7::Send {Numpad7}
	*8::Send {Numpad8}
	*9::Send {Numpad9}
	*Enter::Send {RAlt up}