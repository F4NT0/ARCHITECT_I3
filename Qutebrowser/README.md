# THE MODIFICATIONS MADED ON THE QUTEBROWSER


* Main Config File Location: **~/.config/qutebrowser/config.py**
* If not exist yet, put this command on qutebrowser: `:config-write-py --defaults`
* To load the qutebrowser after modifications: `:config-source`

### Colors

Active Tab Background: Purple: `#800080`
Inactive Tab Background: Dark Gray: `#191919`
Text Color: White: `#e5e5e5`
URL Color Loading: Light Blue: `#add8e6`
URL Loaded: Green: `#008000`
URL with Error: Red: `#ff0000`
URL with Warning: Yellow: `#ffff00`

### Changes on the Generated Config.py


| Modification | Code |
|---|---|
|Scrollbar Background Color|c.color.completion.scrollbar.bg = '#800080'
|Foreground URL from Statusbar with error|c.colors.statusbar.url.error.fg = '#ff0000'
|Foreground URL from Status Bar|c.colors.statusbar.url.fg = '#add8e6'  

