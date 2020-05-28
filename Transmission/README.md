# Transmission - Torrent Downloader

* It's a Lightweight Program to Download Torrents

### How to Install

* Install the CLI version from Transmission: `sudo pacman -S transmission-cli`

### How to used

* Since it's from terminal, you need to say what to do and where to save

Command|Used For
|---|---|
-er|Encrypt all peer connections
-ep|Prefered encrypted peer connections
-w| Where to save downloaded data

* You can Download from a Magnet Link or from a File, used to prefer the magnet link
* You can Download safely using the `-er` tag, they will encrypt your system while downloading the File, like the example below:

```sh
transmission-cli (link or file) -w ~/ -er
```
* In this command the File will going to be safe on the home directory and will be encipted
* I will create a Script to Download Torrent Programs

