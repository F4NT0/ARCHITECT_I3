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
|Foreground URL from Succes when find url|c.colors.statusbar.url.success.http.fg = `#008000`
|Foreground URL when have a warning|c.colors.statusbar.url.warn.fg = '#ffff00'  
|Background color from the tab bar|c.colors.tabs.bar.bg = '#800080'
|Backgound from unselected even tabs|c.colors.tabs.even.bg = '#191919'
|Foreground color of unselected even tabs = '#e5e5e5'
|Color from error in tab|c.colors.tabs.indicator.error = '#ff0000'
|Background color of unselected odd tabs|c.colors.tabs.odd.bg = '#191919'
|Foreground color of unselected odd tabs|c.colors.tabs.odd.fg = '#e5e5e5'
|Background color of selected even tabs|c.colors.tabs.selected.even.bg = '#800080'
|Foreground color of selected even tabs|c.colors.tabs.selected.even.fg = '#e5e5e5'
|Background color of selected odd tabs|c.colors.tabs.selected.odd.bg = '#800080'
|Foreground color of selected odd tabs|c.colors.tabs.selected.odd.fg = '#e5e5e5'
|Make dark mode pages who has this possibility|c.colors.webpage.prefer_color_scheme_dark = True
