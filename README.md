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
| Gtop | sudo pacman -S npm && npm install gtop -g | `gtop`|None


### COLORS

* Main Color: Green - #329932
* Second Color: White - #E5E5E5
* Background Color: Dark Gray: #191919

### CHANGE SHELL COLORS ON MANJARO I3
* The color file configuration is **~/.dir_colors**
* The colors from the urxvt shell is **~/.Xresources**
* On the **Colors** Directory, there is my dir_colors and my .Xresources

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
* My Favorite font on i3 is: `xos4 Terminus:style=Regular:size=11`

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
* All My configuration is in **Bashrc** Directory
### TERMINAL

* We are going to use URXVT terminal
* Installing: `sudo pacman -S rxvt-unicode`
* Configuration File: **~/.Xresources**
* Restarting Configuration file: `xrdb ~/.Xresources`
* Change font for my favorite on the file:
    * For Regular: `Urxvt.font:    xft:xos4 Terminus:style=Regular:size=11`
* Change Background: Background Color is #191919
    * On the .Xresources: `Urxvt.background: [100]#191919`
* Change Cursor Type: `Urxvt*cursorUnderline: true` 

### QUTEBROWSER

* Lightest Browser to i3
* INSTALLATION: sudo pacman -S qutebrowser
* CREATING CONFIGURATION FILE: 
	* The file to config is called `config.py` and needed to be created
	* The location to create is: **~/.config/qutebrowser/config.py**
	* When you complete the configuration, on the qutebrowser insert the following command: `:config-source`
	* You can create a default config.py using the command on qutebrowser: `:config-write-py --defaults`


* COLORS:
	Main Color: Green: #329932
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
	* Restart the System: Mod4 + SHIFT + E`

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
* the font you put on **~/.i3/config** as:
	* `font 'xft:xos4 Terminus:size=11'`

* My Configuration on i3blocks:

```sh
#Check in 5 to 5 seconds
[battery]
command=echo "Battery: $(acpi -b | grep -E -o '[0-9][0-9]?%')"
interval=2
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

### VIM CONFIGURATION

* vimrc CONFIG FILE LOCATION: **/etc/vimrc**
* Here some types of modifications

```sh
# Show number informations
set number
# Code Highlight
syntax on
# Tab space
set tabstop=2
# Autoindentation
set autoindent
```
* Website to create colorscheme for VIM: http://bytefluent.com/vivify/
* My Colorscheme is in **VIM** Directory on this Repo
* WHERE TO PUT THE COLORSCHEME: **/usr/share/vim/vim82/colors**
* AFTER OPEN YOUR VIMRC FILE AND PUT:

```sh
colorscheme <nameofthescheme>
```

### NEOFETCH

* CONFIGURATION FILE LOCATION: **~/.config/neofetch/config.conf**
* inside this file, there is the part of the font colors
* I insert the w3m settings downloaded: `sudo pacman -S w3m`
	* This serves to insert image on neofetch
* i putted like this:

```sh
#order: tittle,@,underline,subtittle,colon,info
colors=(2 2 2 2 2 7) #green

#Image source
image_source="w3m"

#Ascii Distro
ascii_distro="~/Imagens/Wallpapers/manjaro_neofetch.png"

"Ascii color
ascii_colors(2)
```
* My configuration is on **Neofetch** Directory

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
* Send the config to **.config/polybar**: `install -Dm644 /usr/share/doc/polybar/config ~/.config/polybar/`
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
