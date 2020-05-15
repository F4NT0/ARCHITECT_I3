# CREATING AND CONFIGURING AN MANJARO I3

### PROGRAMS ALREADY INSTALLED

| Name | Use for | Command | Config File Location
|---|---|---|---|
| Ranger | GUI look on directories from terminal(to exit press <kbd>Q</kbd>)|ranger|**~/.config/ranger/rc.conf**
| Scrot  | screenshot the scren from terminal | scrot -d 10 (10 seconds to take screenshot)| None 
| Nitrogen | To change the wallpaper from Desktop | nitrogen directory/with/images | None

### PROGRAMS INSTALLED

| Name | Use for |Download Command| Command | Config File Location
|---|---|---|---|
| Firefox| firefox web-search | sudo pacman -S firefox | firefox | None


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


### WALLPAPER

* 
