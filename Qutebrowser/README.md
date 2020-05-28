# QUTEBROWSER - THE COMMAND-LINE BROWSER

<img src="../images/qutebrowser.png">

* The best Browser to use with command-line
* DOWNLOAD: `sudo pacman -S qutebrowser`
* CREATING DEFAULT CONFIGURATION FILE:
	* You need to go to **~/.config/qutebrowser/**
	* Create the file _config.py_ on this Directory
	* Open qutebrowser and call this command: `:config-write-py --defaults`
	* After doing the modifications, call this command on the qutebrowser: `:config-source`

* My Configuration is in the **config.py** file
* The Cheat-sheet of command is [HERE](../Cheat-Sheets/qute_commands.txt)
* I create a Keyboard shortcut to open Qutebrowser on i3wm

```sh
bindsym $mod+F2 exec qutebrowser
```

### Dark Mode on Qutebrowser

* in the **~/.configs/qutebrowser/** you can insert an `.css` file with the colors you want
* then in the qutebrowser insert the following command: `:set content.user_stylesheet stylename.css`
* the **stylename** on my system is **fanto_darktheme.css**

### Qutebrowser Commands

* I create on my i3 the command <kbd>Mod4</kbd> + <kbd>F2</kbd> to Open Qutebrowser

**Interaction**

What is the Command|The Command|Active Command from Keyboard
|---|---|---|
Reload the Active Page|**:reload**|<kbd>R</kbd>
Back from the Previous Page|**:back**|<kbd>Shif</kbd> + <kbd>H</kbd>
Open Link on a New Tab|**:open -t Link**|<kbd>Shift</kbd> + <kbd>O</kbd>
Open Link on the Active Tab|**:open Link**|<kbd>O</kbd>
Open Link on a New Window|**:open -w Link**|<kbd>W</kbd> + <kbd>O</kbd>
Insertion Mode to enter Text||<kbd>I</kbd>
Back to Main Page||<kbd>Ctrl</kbd> + <kbd>H</kbd>
Open the Active Tab in another window||<kbd>G</kbd> + <kbd>Shift</kbd> + <kbd>D</kbd>
Close The Active Tab||<kbd>D</kbd>
Change Between Tabs||<kbd>Alt</kbd> + <kbd>Number</kbd>


**Quickmark**

* Quickmark is used to save pages and open quickly when needed
* Use this commands in that order

|Order|Info|Command|
|1|Save the Active Tab Link|<kbd>M</kbd>
|2|Open the Quickmark on your Active Tab|<kbd>B</kbd>

**Copy and Paste**

What is the Command|From the Keyboard
|---|---|
Copy URL|<kbd>Y</kbd> + <kbd>Y</kbd>
Open URL on New Tab|<kbd>Shift</kbd> + <kbd>P</kbd> + <kbd>P</kbd>


