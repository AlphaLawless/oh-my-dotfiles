# Ranger udisk menu
This script draws menu to mount and unmount partitions using udisksctl and ncurses

![Screenshot](https://github.com/SL-RU/ranger_udisk_menu/raw/master/screenshot.png)

# Requirements
- python3
- udisks2 (for udisksctl)
- lsblk

# How to install
Firstly you need to clone this repo to ranger config directory

```Bash
cd ~/.config/ranger
git clone https://github.com/SL-RU/ranger_udisk_menu
```

Then you need to add to `~/.config/ranger/commands.py` line: 

```Python3
from ranger_udisk_menu.mounter import mount
```

Thats all

# How to use
Enter in ranger `:mount`, than will be shown menu. In this menu you can press:

- `j` or `arrow down` or `Ctrl+n` to move selection down
- `k` or `arrow up` or `Ctrl+p` to move selection up
- `Ctrl+g` or `Esc` or `q` to quit
- `g` or `r` to refresh all partitions and drives
- `m` to mount selected partition
- `u` to unmount selected partition
- `e` to unmount all partitions of selected partition's drive

# Change

This file was like install as plugin, because of that there was a directory change on import from `mounter`:

```Python3
from ranger_udisk_menu.mounter import mount
#to
from plugins.ranger_udisk_menu.mounter import mount
```

Inside the mounter file:

```Python3
"shell python3 ~/.config/ranger/ranger_udisk_menu/menu.py")
#to
"shell python3 ~/.config/ranger/plugins/ranger_udisk_menu/menu.py")
```

