# T430-Numeric-Keypad

### An AutoHotKey script that allows for unintrusive emulation of a numeric keypad for the Lenovo T430 ThinkPad.

By default, this script remaps the following key:
  - 'CTRL' + 'INSERT' remapped to 'NUM LOCK'

Based on this, the following keys get conditionally remapped in order to emulate a numeric keypad:
  - 'ALT GR' remapped to 'RIGHT ALT (depressed)'
  - '0'-'9' remapped to 'NUMPAD0'-'NUMPAD9' respectively
  - '=' remapped to 'NUMPAD+'
  - 'ENTER' remapped to 'RIGHT ALT (released)'

The method for inputting an alt code is as follows:
  1) Press 'CTRL' + 'INSERT' to toggle 'NUM LOCK' on
  2) Press 'ALT GR' momentarily (AutoHotKey will keep this latched on)
  3) Press '=' ('NUMPAD+') to start the alt code sequence
  4) Type the 3 or 4 digit alt code, this can include hexadecimal letters (i.e. 03A9 for a 'Ω' symbol)
  5) Hit 'ENTER' to confirm the alt code, the character should display
