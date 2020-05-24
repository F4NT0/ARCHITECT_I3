# CREATING AND CONFIGURING AN MANJARO I3

### MY CHEAT-SHEETS

* [TMUX](Cheat-Sheets/TMUX_Commands.txt)
* [I3 COMMANDS](Cheat-Sheets/i3_commands.txt)
* [QUTEBROWSER](Cheat-Sheets/qute_commands.txt)
* [CMUS](Cheat-Sheets/cmus_command.txt)


### PROGRAMS I KEEP BASICS

| Name | Use for | Command | Config File Location
|---|---|---|---|
| Ranger | GUI look on directories from terminal(to exit press <kbd>Q</kbd>)|`ranger`|**~/.config/ranger/rc.conf**
| Scrot  | screenshot the scren from terminal | `scrot -d 10 (10 seconds to take screenshot)`| None 
| Nitrogen | To change the wallpaper from Desktop | `nitrogen directory/with/images` | None
| Gtop | sudo pacman -S npm && npm install gtop -g | `gtop`|None

### MY CONFIGURATIONS

| Program | Use for | My Configuration | Status |
|---|---|---|---|
| Color Configuration| Define the System Colors| [Click Here](Colors/README.md) | :heavy_check_mark:
| Git Configurations|Define Shell Git configurations|[Click Here](Git/README.md)|:heavy_check_mark:
| My Font - xos4 Terminus|Define my favorite Font|[Click Here](Terminus_Font/README.md)| :heavy_check_mark:
| My PS1 Configuration|Define the information showed on terminal|[Click Here](Bashrc/README.md)|:heavy_check_mark:
| Cmus|	Program to run music on terminal|[Click Here](Cmus/README.md)|:heavy_check_mark:
| Conky| Program to show system information on Desktop|[Click Here](Conky/README.md)|:heavy_check_mark:
| Urxvt Terminal| Terminal 100% customizable|[Click Here](Urxvt/README.md)|:heavy_check_mark:
| Cli-visualizer| Sound visualization on Terminal |[Click Here](Cli-visualizer/README.md)|:heavy_check_mark:
| Qutebrowser | Command-Line Browser |[Click Here](Qutebrowser/README.md)|:heavy_check_mark:
| Picom | Program to make windows transparent|[Click Here](Picom/README.md)|:heavy_check_mark:
| i3-blocks| status bar to i3|[Click Here](i3_blocks/README.md)|:x:
| vim | the best text editor for Terminal|[Click Here](VIM/README.md)|:heavy_check_mark:


### SOUND - PULSEAUDIO WITH PAVUCONTROL
* First we need to download pulseaudio = `sudo pacman -S pulseaudio`
* Second we download pavucontrol = `sudo pacman -S pavucontrol`
* Restart the Computer = `shutdown -r now`
* To use the system, write on the Shell the Following command: `pavucontrol`
* I create a file on **~/.config/pulse/launch.sh** with the following:

```sh
pulseaudio --kill
pulseaudio --start 
```
* I create a command to the i3 configuration to call this file:

```sh
exec --no-startup ~/.config/pulse/launch.sh
bindsym $mod+Ctrl+m exec pavucontrol
```
* if the sound doesn't work, stop with `pulseaudio --kill` and then `pulseaudio --start`

### PCMANFM

* pcmanfm is a GUI visualization for i3, to see all files and archives
* INSTALLATION: it already comes with manjaro i3, but you can install with: `sudo pacman -S pcmanfm`
* CONFIGURATION FILE: 

### POLYBAR

* Polybar is to apresent some information on desktop
* INSTALLATION: `sudo pacman -S polybar`
* Send the config to **~/.config/polybar**: `install -Dm644 /usr/share/doc/polybar/config ~/.config/polybar/`
* to test the example you go to the _.config/polybar/_ and use this command: `polybar example`
* I create my example from the Github Repo of Polybar
* My config file is in the **Polybar** Directory
* Create the _launch.sh_ to call on i3 and it is in the **Polybar** Directory too
* Make Runnable: `chmod +x launch.sh`
* Call the file on i3 config:
```sh
exec_always --no-startup-id $HOME/.config/polybar/launch.sh
```
* Comment all bar{} part on the i3 config file
