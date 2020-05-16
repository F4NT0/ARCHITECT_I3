# CONFIGURATION FROM MY MANJARO I3

* Configuration file location: **~/.i3/config**
* Reload use the Command: **Mod4 + SHIFT + C**

#### Change Border Color

```sh
# Theme Color
# class           border background text indic. child_border 
 client.focused	                                #FFA500

```
* child_border is the area to change color from the border

### Change MenuBar Colors

```sh
# color from Background: #191919
# on Line 342
colors{
	background #191919	
}

```
### TRANSPARENCY ON SHELL

```sh
# Picom 
exec --no-startup-id picom
```

### MAKE QUTEBROWSER THE MAIN BROWSER

```sh
bindsym $mod+F2 exec qutebrowser
```


### CHANGE i3 status bar colors

* Configuration file: **/etc/i3status.conf**
* Color Changes:
    * color_good = "#008000"
    * color_bad  = "#FF0000"
    * color_degraded = "#FFFF00"
* Now the rest is change on **~/.i3/config**
    * Background is Dark Gray
    * Status Line is ORANGE
    * Separator is green
	
```sh 
colors{
   background #191919
   statusline #FFA500
   separator  #008000

}
```



