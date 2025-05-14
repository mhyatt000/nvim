# nvim
my nvim config

# INSTALL

Run chmod u+x nvim-linux-x86_64.appimage && ./nvim-linux-x86_64.appimage
If your system does not have FUSE you can extract the appimage:

    ./nvim-linux-x86_64.appimage --appimage-extract
    ./squashfs-root/usr/bin/nvim


## important notes
- copilot and lsps require nodejs > 18
    - nvm works fine
    - to install nvm:
        - `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash`
        - `nvm install 20`
- :MasonInstall <lsp> to install lsps
- the good features require nvim>=0.9.5
    - you can try to install it via `sudo apt install neovim`
    - i have a copy in the main dir for linux machines
    - you can `alias nvim=/path/to/nvim` 
- ripgrep needed for telescope live grep
    - `sudo apt install ripgrep`
    - `brew install ripgrep`
