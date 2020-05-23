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

### Dark Mode on Qutebrowser

* in the **~/.configs/qutebrowser/** you can insert an `.css` file with the colors you want
* then in the qutebrowser insert the following command: `:set content.user_stylesheet stylename.css`
* the **stylename** on my system is **fanto_darktheme.css**

