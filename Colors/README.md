# MY COLOR CONFIGURATION

### How to change colors

* First, change your Shell to [Urxvt]()
* Second, change the System colors on the file: **~/.Xresources**
* After change the Colors, use the command: `xrdb ~/.Xresources`
* Open the file **~/.dir_colors** on VIM and you are going to see the colors are being used from the system, change the way you want
* Close the Terminal and open again, now with the new colors
* The **.dir_colors** use the colors changed on **.Xresources**

### Base Colors

Type|Name|Hex Code
|---|---|---|
Background Color|Dark Gray|#191919
Main Color|Green|#329932
Second Color|White|#E5E5E5
Desktop Info Color|Orange|#FFA500

### Xresources colors

* Used to call on many programs
* On the File: **~/.Xresources**

Color Number|Name Color|Hex Code
|---|---|---|
color0/color8|black|#191919
color1/color9|red|#FF0000
color2/color10|green|#329932
color3/color11|orange|#cc8400
color4/color12|blue|#6666FF
color5/color13|magenta|#b266b2
color6/color14|yellow|#FFFF00
color7/color15|white|#E2E2E2

### Dir_Colors colors

* The Basic colors on the Shell
* On the File: **~/.dir_colors**

Used For|Name|ANSI Code|
|---|---|---|
Color from Directories|orange|00;33
Color from Execute Permissions Files|bold yellow|01;36
Color from Compressed Arquives|red|00;31
Color from Image formats|purple|00;35
Color from Document Files|blue|00;34
Color from Audio Formats|yellow|00;36

* The Programming File colors

Used For|Name|ANSI Code|
|---|---|---|
Color from Java files|bold orange|01;33
Color from python files|bold blue|01;34
Color from ruby files|bold red|01;31
Color from shell script files|bold green|01;32
Color from haskell files|bold purple|01;35
Color from c files|white background and black foreground|47;30
