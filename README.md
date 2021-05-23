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

