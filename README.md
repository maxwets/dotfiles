# dotfiles
---

```bash
sudo apt install \
    alacritty \
    arandr \
    autorandr \
    cmake \
    curl \
    dunst \
    feh \
    flameshot \
    gcc \
    gdb \
    git \
    i3 \
    i3lock \
    keepassxc \
    linux-headers-amd64 \
    maim \
    make \
    mingw-w64 \
    mpv \
    neovim \
    numlockx \
    picom \
    pipx \
    pkg-config \
    polybar \
    pulsemixer \
    python3 \
    rofi \
    screen \
    sxiv \
    thunar \
    tmux \
    vim \
    wget \
    wget \
    xterm \
    zsh \
    zsh-autosuggestions \
    zsh-syntax-highlighting
```

```bash
sudo cp etc/X11/xorg.conf.d/20-keyboard.conf /etc/X11/xorg.conf.d/20-keyboard.conf
sudo cp etc/modprobe.d/kvm-blacklist.conf /etc/modprobe.d/kvm-blacklist.conf
sudo cp etc/bash.bashrc /etc/bash.bashrc
sudo cp etc/screenrc /etc/screenrc
sudo cp etc/tmux.conf /etc/tmux.conf
sudo cp etc/vim/vimrc /etc/vim/vimrc
```

```bash
mkdir -p ~/.config ~/.local ~/.local/bin ~/.local/share ~/.local/share/applications
cp -r .config/* ~/.config/.
cp -r .local/bin/* ~/.local/bin/.

rm ~/.profile ~/.xsession
ln -s ~/.config/environment.d/profile.conf ~/.profile
cp .xsession ~/.xsession
cp .gdbinit ~/.gdbinit
cp .editrc ~/.editrc
```

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

```bash
curl -qsL 'https://install.pwndbg.re' | sh -s -- -t pwndbg-gdb
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

```bash
pipx install ropper
pipx install exegol
```
