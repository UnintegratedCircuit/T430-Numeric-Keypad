; Author: UnintegratedCircuit
;
; Basic implementation (enough to enter alt codes with) of a numeric keypad for the Lenovo
; ThinkPad T430. This includes conditional remapping to form a 'NumLock' key, a functioning
; 'RIGHT Alt' key, and proper numpad keys from the standard number keys that lay across the top
; of the keyboard.
;
; You are free to use this; however, I claim no responsibility for any damage you cause to your
; laptop/PC (or others'). By running this script through AutoHotKey, you do so at your own risk.
;
; Feel free to repost this and spread the word around, although you must leave this header text
; in place, and as is. Also, feel free to check out my electronics website/blog thing where I
; document my various projects (although, progress is slow due to other commitments). Link below:
;
; https://unintegratedcircuit.wixsite.com/unintegratedcircuit



#NoTrayIcon					; Removes script icon from the tray

^Insert::NumLock				; Maps 'Ctrl' + 'Insert' combination to the NumLock key

#If GetKeyState("NumLock", "T")			; Get the current state of the NumLock key, which is set to toggle
	LControl & RAlt::Send {RAlt down}	; Maps a tap of the 'Alt Gr' key to a 'press-and-hold' of the 'RIGHT Alt' key*
	*=::Send {NumpadAdd}			; The following lines modify the existing number keys
	*0::Send {Numpad0}			; to send out their numeric keypad counterparts
	*1::Send {Numpad1}			
	*2::Send {Numpad2}
	*3::Send {Numpad3}
	*4::Send {Numpad4}
	*5::Send {Numpad5}
	*6::Send {Numpad6}
	*7::Send {Numpad7}
	*8::Send {Numpad8}
	*9::Send {Numpad9}
	*Enter::Send {RAlt up}			; Releases the 'pressed-and-held' 'RIGHT Alt' key

; NOTE: The 'Alt Gr' key is equivalent, at least to AutoHotKey, to the combination of 'LEFT Ctrl' + 'RIGHT Alt'.

; *If your keyboard does not have an 'ALT GR' key, but instead has the needed 'RIGHT Alt' key,
; then you might be able to comment this line out and stop it from running. I personally have not
; tested this because I have the 'ALT GR' key on my keyboard; however, feel free to experiment.