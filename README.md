# CREATING AND CONFIGURING AN MANJARO I3

### MY CHEAT-SHEETS

* [TMUX]()
* [I3 COMMANDS]()
* [QUTEBROWSER]()



### PROGRAMS I USE

| Name | Use for | Command | Config File Location
|---|---|---|---|
| Ranger | GUI look on directories from terminal(to exit press <kbd>Q</kbd>)|ranger|**~/.config/ranger/rc.conf**
| Scrot  | screenshot the scren from terminal | scrot -d 10 (10 seconds to take screenshot)| None 
| Nitrogen | To change the wallpaper from Desktop | nitrogen directory/with/images | None
| Picom  | To make the Shells transparent | picom | **~/.config/picom.conf**
| Conky | Showing information on Desktop | sudo pacman -S conky-all |  
| QuteBrowser | sudo pacman -S qutebrowser | <kbd>Mod4</kbd> + <kbd>F2</kbd>|**~/.config/qutebrowser/config.py**

### FONT

* The Font is Terminus, on [This Folder](Terminus_Font) is all the Directory from this Font.
* How to install the Font:
   * Unzip the Folder on your Downloads Folder: `tar -xzvf terminus-font-4.48.tar.gz`
   * `./configure /etc/fonts`
   * `make -j8`
   * `sudo make install fontdir`
* How to change the Font:
   * See possible fonts: `fc-list | grep "terminus"`
   * Change font from the .Xresources file, like showing below

### PS1 COLORS

* PS1 is the basic information who appears on your Shell
* Configuration file: **~/.bashrc**
* My Basic Configuration: `PS1='\[033[01;35m\] C4L4NG0_S3RV3R \[033[01;36m\] \W \[033[01;33m\] $(__git_ps1 " (%s)") > \[\033[00m'`
* Configuring Git on Bashrc:
    * Create de bash_git with this command: 
	* `curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git`
    * In the end of the file put this two lines:
    * `source ~/.bash_git`
    * `export GIT_PS1_SHOWDIRTYSTATE=1`

### TERMINAL

* We are going to use URXVT terminal
* Installing: `sudo pacman -S rxvt-unicode`
* Configuration File: **~/.Xresources**
* Restarting Configuration file: `xrdb ~/.Xresources`
* Change font for my favorite on the file:
    * For Regular: `Urxvt.font:    xft:xos4 Terminus:style=Regular:size=14`
* Change Background: Background Color is #191919
    * On the .Xresources: `Urxvt.background: [100]#191919`
* Make Terminal Transparent: (ONLY WHEN COMPTON DOESN'T WORK)
    * On the .Xresources: 
	* `Urxvt.transparent: true`
        
	* `Urxvt.shading: 20` 

### QUTEBROWSER

* Lightest Browser to i3
* INSTALLATION: sudo pacman -S qutebrowser
* CREATING CONFIGURATION FILE: 
	* The file to config is called `config.py` and needed to be created
	* The location to create is: **~/.config/qutebrowser/config.py**
	* When you complete the configuration, on the qutebrowser insert the following command: `:config-source`
	* You can create a default config.py using the command on qutebrowser: `:config-write-py --defaults`


* COLORS:
	Main Color: Orange: #FFA500
	Second Color: Dark Gray: #191919
	Text Color: White: #e5e5e5
        url Color: Light Blue: #ADD8e6
	url sucess color: Green: #008000

* CONFIGURATION FILE EXAMPLE: it's in the qutebrowser Directory	 


### PICOM

* Picom is to make the Terminal Transparent
* INSTALLATION: `sudo pacman -S picom`
* CONFIGURATION FILE:
	* Move the file _picom.conf_ from **/etc/xdg/** to **~/.config/**
	* Move the file _picon.conf.example_ from **/etc/xdg/** to **~/.config/**

* CONFIGURATION ON PICOM CONF:
	* blur-background-frame = true;
	* inactive-opacity = 1;
	* active-opacity = 1;
	* frame-opacity = 1;
	* opacity-rule = ["90:class_g = 'URxvt'","90:class_g = 'qutebrowser'"]

* TEST CONFIGURATION:
	* `picom --config ~/.config/picom.conf`

* CONFIGURATION ON I3: 
	* Insert on the config file from i3 = `exec --no-startup-id picom`
	* Restart the System: Mod4 + SHIFT + E

### CONKY CONFIGURATION

* The themes from Conky on Manjary is in **/usr/share/conky**
* The _conky1.10__shortcuts_themeName_ is themes from the Shortcut
* The _conky_themeName_ is the theme from the information on the screen
* After doing this two files, on the **/usr/bin** create a **start_conky_themeName**
* Call the files like that:

```sh
#!/bin/bash

conky -c /usr/share/conky/conky1.10_shortcuts_themeName &&
conky -c /usr/share/conky/conky_themeName &&
exit 0
```
* Make this file Runnable: chmod +x start_conky_themeName

* Call this file on our i3 config file: **~/.i3/config**

```sh
exec --no-startup-id start_conky_themeName
```

* My configuration is in **Conky** Directory

### i3 BLOCKS

* i3 block is a status line to i3 enviroment
* INSTALLATION: sudo pacman -S i3blocks
* CONFIGURATION FILE LOCATION: **/etc/i3blocks.conf**

* My Configuration:

* First i create an battery script who shows the status and put on **~** Directory:

```sh
#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9][0-9]?%')

# Message
echo "Battery: $BAT"
echo "BAT: $BAT"

# Full Battery (GREEN)
[${BAT%} -le 100] && echo "#008000"

# Battery below 20% (YELLOW)
[${BAT%} -le 20] && echo "#FFFF00"

# Low Battery (RED)
[${BAT%} -le 5] && echo "#FF0000"

exit 0
```
* Make this script executable with `chmod +x battery.sh`
* Now i will call this script on my i3block

```sh
#Check in 5 to 5 seconds
[battery]
command=~/battery.sh
interval=5
```

* Check my IP

```sh
[ip]
color=#FFC966
command=echo -e "IP: $(hostname -i)"
interval=5
```
* Always needed the interval option

* Check Disk Available

```sh
[disk]
color=#FFB732
command=echo "Disk Available: $(df -H --output=avail /dev/sda1 | grep -o '[0-9]*[G]')"
interval=1
```
* time

```sh
[time]
command=date '%Y-%m-%d %H:%M:%S'
interval=1

```
