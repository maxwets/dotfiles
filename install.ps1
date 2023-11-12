md ~\Documents\WindowsPowerShell\
md ~\Source\Repos\

cp .\.config\powershell\Microsoft.PowerShell_profile.ps1 $PROFILE
regedit.exe .\caps-swap-escape.reg

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -y 7zip
choco install -y firefox
choco install -y git
choco install -y keepassxc
choco install -y microsoft-windows-terminal
choco install -y neovim
choco install -y processhacker
choco install -y python
choco install -y sysinternals
choco install -y visualstudio2019community
choco install -y vlc
choco install -y wireguard
choco install -y x64dbg

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

