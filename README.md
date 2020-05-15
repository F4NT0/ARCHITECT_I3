# CREATING AND CONFIGURING AN MANJARO I3

### MY CHEAT-SHEETS

* [TMUX]()
* [I3 COMMANDS]()
* [QUTEBROWSER]()



### PROGRAMS ALREADY INSTALLED

| Name | Use for | Command | Config File Location
|---|---|---|---|
| Ranger | GUI look on directories from terminal(to exit press <kbd>Q</kbd>)|ranger|**~/.config/ranger/rc.conf**
| Scrot  | screenshot the scren from terminal | scrot -d 10 (10 seconds to take screenshot)| None 
| Nitrogen | To change the wallpaper from Desktop | nitrogen directory/with/images | None
| Picom  | To make the Shells transparent | picom | **~/.config/picom.conf**

### PROGRAMS INSTALLED

| Name | Use for |Download Command| Command | Config File Location
|---|---|---|---|
| Firefox| firefox web-search | sudo pacman -S firefox | <kbd>Mod4</kbd> + <kbd>F2</kbd> or <kbd>Mod4</kbd> + <kbd>D</kbd> + firefox | None
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
	Main Color: Purple: #800080
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

