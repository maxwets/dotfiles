# dotfiles
Maxime Wets
---
## How to install ?
You can easily copy my config files to your $HOME by doing
```bash
git clone https://github.com/maxwets/dotfiles.git
cd dotfiles
sh ./install.sh
make config
```

## Programs that I use
- bspwm
- rofi
- alacritty
- felix
- tmux
- zsh
- neovim

### Distro
My current Linux distro is currently [Debian 11](https://debian.org).

### Window Manager
My tiling window manager is [bspwm](https://github.com/baskerville/bspwm).
I use it with:
- [sxhkd](https://github.com/baskerville/sxhkd) to manage the binding keys;
- [polybar](https://github.com/polybar/polybar) to manage the status bar;
- [dunst](https://github.com/dunst-project/dunst) to manage notifications;
- [picom](https://github.com/yshui/picom) as a compositor.

### Launcher
[rofi](https://github.com/davatorium/rofi) is an alternative for [dmenu](https://github.com/maxwets/dmenu) that is easier to configure.

### Shell
I use [zsh](https://www.zsh.org/).

### Terminal Multiplexer
I use [tmux](https://github.com/tmux/tmux) for managing multiple terminals.

### Terminal File Browser
I use [felix](https://github.com/kyoheiu/felix) which is a TUI file browser written in Rust.

### Editor
[neovim](https://neovim.io) is my text editor.
My plugin manager is [vim-plug](https://github.com/junegunn/vim-plug).

## Key bindings

### Window Manager
The Modifier I use is `$Mod4` aka Windows key.
- `M-Enter` : spawn `$TERM`;
- `M-Shift-Enter` : spawn `$BROWSER`;
- `M-Space` : spawn `rofi`;
- `M-R` : reload config;
- `M-p` : take screenshot and copy to clipboard;
- `M-P` : take screenshot and save it;
- `M-n` : spawn `nnn`;
- `M-q` : kill focused window.
I use `M-Vi` keys for moving windows.

### tmux
The Modifier I use is the `Alt` key.
- `M-Space` : Prefix.

#### window management
I use `C+Vi` keys to move through to change the focus on the pane.
Copy pasting with the mouse is enabled.
- `M-"` : split vertically;
- `M-'` : split horizontally;
- `M-Enter` : spawn new window;
- `M-Tab` : go to last window;
- `M-q` : kill window;
- `M-w` : kill pane.

#### visual mode
- `Escape` : enter visual mode;
- `y` : copy;
- `p` : paste.

## LICENCE
MIT Licence
