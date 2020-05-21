# THE TERMINUS FONT

* This is my favorite font to use on i3

### How to install

* Unzip the Folder on your Downloads Folder:
    * `tar -xzvf terminus-font-4.48.tar.gz`
* Follow this command steps in order:
    * `cd terminus-font-4.48`
    * `./configure /etc/fonts`
    * `make -j8`
    * `sudo make install fontdir`

### How to Configure

* See the possible fonts: 
    * `fc-list | grep "terminus"`
* Change font on the **~/.Xresources** file:

```sh
URxvt.font: xft:xos4 Terminus:style=Regular:size=11
```
* Change font on the **~/.i3/config** file:

```sh
font 'xft:xos4 Terminus:style=Regular:size=11'
```

* Change font on the **/usr/share/conky/conky_fanto** file:

```sh
font = 'xos4 Terminus:style=Regular:size=11'
```

* Change font on **~/.config/polybar/config** file:

```sh
font-0 = xfts:xos4 Terminus:style=Regular:size=9
```