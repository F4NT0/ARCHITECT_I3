# PICOM CONFIGURATION

* **picom** is a program to make windows Transparent

* INSTALLATION: `sudo pacman -S picom`
* CONFIGURATION FILE LOCATION:
	* move the file _picom.conf_ from **/etc/xdg/** to **~/.config/**
* My configuration from Picom is [HERE](picom.conf)
* To test de Configuration: `picom --config ~/.config/picom.conf`
* To run on i3 you need to insert this command in **~/.i3/config**

```sh
exec --no-startup-id picom
```
* after insert this command on i3, restart the i3: <kbd>Mod4</kbd> + <kbd>Shift</kbd> + <kbd>E</kbd>

