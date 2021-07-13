# T430-Numeric-Keypad

### An AutoHotKey script that allows for unintrusive emulation of a numeric keypad for the Lenovo T430 ThinkPad.

By default, this script remaps the following key:
  - 'Ctrl' + 'Insert' remapped to 'NumLock'

Based on this, the following keys get conditionally remapped in order to emulate a numeric keypad:
  - 'Alt Gr' remapped to 'RIGHT Alt (depressed)'
  - '0'-'9' remapped to 'NUMPAD0'-'NUMPAD9' respectively
  - '=' remapped to 'NUMPAD+'
  - 'Enter' remapped to 'RIGHT Alt (released)'

NOTE: To type the hexadecmial characters 'A' through 'F', simply use the corresponding letter key on the keyboard as this does not need remapping.

### Instructions for use:

1. Press 'Ctrl' + 'Insert' to toggle the NumLock key ON.
2. Press the 'Alt Gr' key to begin entering numeric keypad characters.
3. Type the sequence of numeric keypad characters.
4. Press 'Enter' to display the character (pressing 'Enter' mid-sequence also acts so as to 'abort' the sequence).
5. Repeat steps 3 & 4 as required until all the desired alt-code or unicode characters have been typed.
6. Press 'Ctrl' + 'Insert' to toggle the NumLock key off and return original functionality to all keys.

For example, to enter the unicode 'Ω' character, one would:

1. Press 'Ctrl' + 'Insert'
2. Press 'Alt Gr'
3. Type '+' '2' '1' '2' '6'
4. Press 'Enter'
5. Press 'Ctrl' + 'Insert'

If this script does not appear to run correctly (the familiar Windows error chime might sound when trying to type the '+' character or the letter characters), this is likely because of a registry setting. To fix this, follow the steps below:

1. Press 'Windows Key' + 'R' and type 'regedit' (you may need to click yes on the User Account Control pop-up).
2. In the menu on the left, or by using the search bar, navigate to: 'HKEY_CURRENT_USER\Control Panel\Input Method'.
3. If there is a field called 'EnableHexNumpad' with the type set to 'REG_SZ', skip to step 4, otherwise right click, hover over 'New' and select 'String Value' and name it 'EnableHexNumpad'.
4. Right click, click 'Modify...', change the value to '1', and click OK.
5. Test the script again by attempting to type the 'Ω' character as explained in the example above.

I had to do this when I reinstalled Windows 10 on my ThinkPad T430 and I believe Windows disables this registry setting by default, so there is a fair chance you may need to perform this edit.



Disclaimer: As with the script, I take no liability or responsibility if you damage your own (or anyone else's) machine by following these instructions; these instructions are followed entirely at your own risk. Nothing should go wrong, as these are, to the best of my knowledge, the exact steps and script running on my current machine; however, I cannot guarantee that fact, hence this disclaimer.