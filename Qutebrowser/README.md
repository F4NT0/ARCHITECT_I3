# THE MODIFICATIONS MADED ON THE QUTEBROWSER


* Main Config File Location: **~/.config/qutebrowser/config.py**
* If not exist yet, put this command on qutebrowser: `:config-write-py --defaults`
* To load the qutebrowser after modifications: `:config-source`

### Colors

Active Tab Background: Orange: `#FFA500`
Inactive Tab Background: Dark Gray: `#191919`
Text Color: White: `#E5E5E5`
URL Color Loading: Light Blue: `#ADD8E6`
URL Loaded: Green: `#008000`
URL with Error: Red: `#FF0000`
URL with Warning: Yellow: `#FFFF00`

### Changes on the Generated Config.py


| Modification | Code |
|---|---|
|Scrollbar Background Color|c.color.completion.scrollbar.bg = '#FFA500'
|Foreground URL from Statusbar with error|c.colors.statusbar.url.error.fg = '#FF0000'
|Foreground URL from Status Bar|c.colors.statusbar.url.fg = '#ADD8E6'
|Foreground URL when have a warning|c.colors.statusbar.url.warn.fg = '#FFFF00'  
|Background color from the tab bar|c.colors.tabs.bar.bg = '#FFA500'
|Backgound from unselected even tabs|c.colors.tabs.even.bg = '#191919'
|Foreground color of unselected even tabs = '#E5E5E5'
|Color from error in tab|c.colors.tabs.indicator.error = '#FF0000'
|Background color of unselected odd tabs|c.colors.tabs.odd.bg = '#191919'
|Foreground color of unselected odd tabs|c.colors.tabs.odd.fg = '#E5E5E5'
|Background color of selected even tabs|c.colors.tabs.selected.even.bg = '#FFA500'
|Foreground color of selected even tabs|c.colors.tabs.selected.even.fg = '#E5E5E5'
|Background color of selected odd tabs|c.colors.tabs.selected.odd.bg = '#800080'
|Foreground color of selected odd tabs|c.colors.tabs.selected.odd.fg = '#E5E5E5'
|Make dark mode pages who has this possibility|c.colors.webpage.prefer_color_scheme_dark = True
