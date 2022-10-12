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
make i3-plasma
```

## Programs that I use
- i3 (with KDE Plasma)
- rofi
- st
- zsh
- tmux
- neovim
- nnn
- gruvbox

### distro
My current Linux distro is currently [Debian](https://debian.org).

### i3-gaps
My tiling window manager is [i3](https://github.com/i3/i3).

### rofi
[rofi](https://github.com/davatorium/rofi) is an alternative for [dmenu](https://github.com/maxwets/dmenu).

### st
[st](https://tools.suckless.org/st) is a simple terminal developped by suckless.
I use a [fork](https://github.com/maxwets/st) of [Luke Smith's config](https://github.com/LukeSmithxyz/st)

### zsh
I use [zsh](https://www.zsh.org/).

### tmux
I use [tmux](https://github.com/tmux/tmux) for managing multiple terminals.

### neovim
[neovim](https://neovim.io) is my text editor.
My plugin manager is [vim-plug](https://github.com/junegunn/vim-plug).

### nnn
[nnn](https://github.com/jarun/nnn) is my file browser.

### gruvbox
[gruvbox](https://github.com/morhetz/gruvbox) is a beautiful theme that I use with st, tmux, vim and rofi.

## Key bindings

### i3
The Modifier I use is `$Mod4` aka Windows key.
- `M-Enter` : spawn terminal;
- `M-Space` : spawn `rofi`;
- `M-w` : spawn `firefox`;
- `M-R` : reload config;
- `M-p` : take screenshot and copy to clipboard;
- `M-P` : take screenshot and save to ~/Pictures/screenshot\_date;
- `M-n` : spawn `nnn`;
- `M-q` : kill focused window.
I use Vim keys for moving windows.

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

### st
I use the `Alt-Vi` keys to move around

### zsh
I use the Vi key bindings with the following shortcuts for autosuggest :
- `Alt-z` : autosuggest-accept;

## LICENCE
MIT Licence
