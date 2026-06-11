# Custom Sounds

ChilloutVR supports customizing some of the sounds used in certain game interactions

---

## Instructions

1. Locate the folder where custom sounds are stored. It can be found at: `ChilloutVR_Data\StreamingAssets\Audio\` inside
   the game's installation directory. <p>By default, it should be at:
   `C:\Program Files (x86)\Steam\steamapps\common\ChilloutVR\ChilloutVR_Data\StreamingAssets\Audio\`
2. Copy the `wav-format` audio files you want to use into this directly
3. Rename the files to match the sound you want to replace. Check [Available Sounds](#available-sounds) for the
   available names. Note: The names __must__ be exactly the same, including casing
4. (Optional) If the game is running, press `F5` to reload the sounds without restarting

### Available Sounds

- `custom_ui_click.wav` - Played when clicking on some entries of the menus
- `custom_ui_hover.wav` - Played when hovering on some entries of the menus

#### Microphone

- `custom_mic_mute.wav` - Played when muting the voice in-game
- `custom_mic_unmute.wav` - Played when unmuting the voice in-game

#### Portable Camera

- `custom_camera_shutter.wav` - Played when taking a picture with the in-game Portable Camera

#### ChatBox

- `custom_chatbox_message.wav` - Played when receiving a ChatBox message
- `custom_chatbox_ping.wav` - Played when receiving a ChatBox message that mentions you (@your-username)
- `custom_chatbox_typing.wav` - Played when a player starts typing a ChatBox message
