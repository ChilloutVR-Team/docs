# CVR Input Field Keyboard Handler <div class="whitelisted" data-list="PW"></div>
This component lets you override the display behaviour of the build-in keyboard for in-world input fields.

Place this component alongside an Input Field or TMP Input Field.
If one is not present, one is automatically added on content load, defaulting to open the keyboard.

### Properties

##### Keyboard Mode
This property allows you to choose how the keyboard behaves when an input field is focused. The options are:
- **OpenKeyboard**: The keyboard will display as normal.
- **Disabled**: The keyboard will not display at all.

If the input field itself is disabled the keyboard will not display regardless of this setting.