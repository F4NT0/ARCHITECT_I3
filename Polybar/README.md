# STATUS BAR POLYBAR

* Polybar is the best system to create a Status Bar on i3

### INSTALLATION

* `sudo pacman -S polybar`

### CONFIGURATION FILE

* Creating the configuration file with this command
	* `install -Dm644 /usr/share/doc/polybar/config ~/.config/polybar/`
* To test the example you go to the _.config/polybar_ and use this command: `polybar example`
* My config file is in [HERE](config)
* I create the _launch.sh_ to call on i3 to restart and start my polybar
* Make Runable: `chmod +x launch.sh`
* Call this script on i3 config: 

```sh
exec_always --no-startup-id $HOME/.config/polybar/launch.sh
```
* Comment all _bar{}_ part on the i3 configuration file
