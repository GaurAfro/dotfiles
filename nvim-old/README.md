
# Neovim Setup

This repository contains my personal Neovim configuration, which is compliant with the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

## Steps to Setup

### First, Install Neovim the Right Way for WSL (Debian)

1. Make sure you have curl and FUSE installed:
    ```bash
    sudo apt install curl fuse
    ```

2. Ensure you have Node.js for [Copilot](https://learn.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl#install-nvm-nodejs-and-npm) by first getting [nvm](https://learn.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl#install-nvm-nodejs-and-npm):
    ```bash
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    ```

3.  Then, use the following command to get the latest Node.js version:
    ```bash
    nvm install node
    ```

### Install [Neovim from an AppImage("universal" Linux package)](https://github.com/neovim/neovim/wiki/Installing-Neovim#linux)

1. Download the AppImage:
    ```bash
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ```

2. Extract it:
    ```bash
    ./nvim.appimage --appimage-extract
    ./squashfs-root/AppRun --version
    ```

3. Make it globally available:
    ```bash
    sudo mv squashfs-root /
    sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
    ```

### Sync Your Config from GitHub

1. Clone this repository into your home directory:
    ```bash
    git clone https://github.com/your-username/dotfiles.git ~/dotfiles
    ```

2. Create the necessary directories for the XDG Base Directory Specification:
    ```bash
    mkdir -p $HOME/.config $HOME/.local/share
    ```

3. Set the `$XDG_CONFIG_HOME` and `$XDG_DATA_HOME` variables in your shell's configuration file (`.bashrc`, `.zshrc`, etc.), if they're not already set:
    ```bash
    grep -qF "export XDG_CONFIG_HOME=$HOME/.config" ~/.bashrc || echo "export XDG_CONFIG_HOME=$HOME/.config" >> ~/.bashrc
    grep -qF "export XDG_DATA_HOME=$HOME/.local/share" ~/.bashrc || echo "export XDG_DATA_HOME=$HOME/.local/share" >> ~/.bashrc
    source ~/.bashrc
    ```

4. Create a symbolic link from the cloned repository's `nvim` directory to `$XDG_CONFIG_HOME/nvim`:
    ```bash
    ln -s ~/dotfiles/nvim $XDG_CONFIG_HOME/nvim
    ```

## Installing Vim-Plug

[Vim-Plug](https://github.com/junegunn/vim-plug) is a minimalist Vim plugin manager. You can install it with the following command:

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Installing Plugins

Once Vim-Plug is installed, you can install the plugins configured in the repository by opening Neovim and entering the following command:

```vim
:PlugInstall
```

