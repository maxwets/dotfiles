# dotfiles
Maxime Wets
---
## How to install ?
You can easily copy my config files to your $HOME by doing
```bash
git clone https://github.com/maxwets/dotfiles.git
make -C ./dotfiles
```

## Programs that I use
- i3
- dunst
- i3lock
- picom
- rofi
- alacritty
- felix
- tmux
- zsh
- neovim

### Distro
I use [Arch Linux](https://archlinux.org).

### Window Manager
My tiling window manager is [i3](https://i3wm.org).
- [dunst](https://github.com/dunst-project/dunst) to manage notifications;
- [i3lock](https://github.com/Raymo111/i3lock-color) together with [xss-lock](https://bitbucket.org/raymonad/xss-lock) to lock my session;
- [picom](https://github.com/yshui/picom) as a compositor.

### Launcher
[rofi](https://github.com/davatorium/rofi) is an alternative for `dmenu` that is easy to configure, good looking and powerful !

### Shell
I use [zsh](https://www.zsh.org/).

### Terminal Multiplexer
I use [tmux](https://github.com/tmux/tmux).

### Terminal File Browser
I use [felix](https://github.com/kyoheiu/felix) which is a TUI file browser written in Rust.

### Editor
[neovim](https://neovim.io) is my text editor.
My plugin manager is [vim-plug](https://github.com/junegunn/vim-plug).
I use the following plugins:
- `ctrlpvim/ctrlp.vim`: fuzzy file finder bound to `C-p`;
- `folke/which-key.nvim`: gives hints on the key options;
- `itchyny/lightline.vim`: status bar;
- `jghauser/mkdir.nvim`: like `mkdir -p`;
- `mhinz/vim-startify`: default menu to quickly find last edited files;
- `ms-jpq/coq\_nvim`: autocomplections;
- `nvim-tree/nvim-tree.lua`: Directory tree, bound to `ù`
- `nvim-tree/nvim-web-devicons`: Icons for nvim-tree
- `qtc-de/vve`: quickly encoding and decoding `url/b64/hex/bin/...` strings;
- `rebelot/kanagawa.nvim`: kanagawa theme.

### Browser
I use the [firefox](https://www.mozilla.org/) browser with the [Vimium-FF](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/) extension.

## Key bindings

### Window Manager
The Modifier I use is `$Mod4` aka Windows key.
- `M-Enter`: spawn `terminal`;
- `M-Shift-Enter`: spawn `browser`;
- `M-Space`: spawn `rofi`;
- `M-BackSpace`: toggle split;
- `M-Shift-Escape`: lock screen;
- `M-r`: enter resize mode;
- `M-R`: restart i3;
- `M-p`: take screenshot and copy to clipboard;
- `M-P`: take screenshot and save it;
- `M-f`: toggle fullscreen mode;
- `M-F`: toggle floating window;
- `M-q`: kill focused window.
I use `M-Vi` keys for moving windows and `M-[0-9]` keys for moving workspaces.

### Vim
My leader key is mapped to `Space`.
I use the following custom `<leader>` key bindings:
- `<leader>q :q<cr>`
- `<leader><cr> :tabnew<cr>:e `
- `<leader>n :tabnext<cr>`
- `<leader>N :tabprev<cr> `
- `<leader>h :wincmd h<cr>`
- `<leader>j :wincmd j<cr>`
- `<leader>k :wincmd k<cr>`
- `<leader>l :wincmd l<cr>`
- `<leader>i :vsplit<cr>`
- `<leader>o :split<cr>`

### tmux
The Modifier I use is the `Alt` key.
- `M-Space` : Prefix.

#### window management
I use `Alt+Vi` keys to move through to change the focus on the pane.
Copy pasting with the mouse is enabled.
- `Alt-Enter`: spawn new window;
- `Alt-n`: go to next window;
- `Alt-N`: go to previous window;
- `Alt-q`: kill window;
- `Alt-w`: kill pane.

#### visual mode
- `Escape` : enter visual mode;
- `y` : copy;
- `p` : paste.

## LICENCE
MIT Licence
