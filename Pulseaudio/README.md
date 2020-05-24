# PULSEAUDIO WITH PAVUCONTROL

* Pulseaudio is the system i choose to make my sound on i3
* Pavucontrol is to control the volume from pulseaudio

|ABOUT|INFO
|---|---|
DOWNLOAD PULSEAUDIO|`sudo pacman -S pulseaudio`
DOWNLOAD PAVUCONTROL|`sudo pacman -S pavucontrol`

* Restart the system when finished

### START PAVUCONTROL

* Open the APP Launcher: <kbd>Mod4</kbd> + <kbd>d</kbd>
* Write _pavucontrol_ on the system and click <kbd>Enter</kbd>

### PULSEAUDIO

* To help the reload from pulse I create the _launch.sh_ file to reload, where:

```sh
pulseaudio --kill #stop pulseaudio
pulseaudio --start #start pulseaudio
```
* Insert this file on the Directory **~/.config/pulse/launch.sh**
* Then call this file on your i3 file: **~/.i3/config**

```sh
exec --no-startup ~/.config/pulse/launch
```
* Then I create a Shortcut to Pavucontrol on my i3 system:

```sh
bindsym $mod+Ctrl+m exec pavucontrol
```


