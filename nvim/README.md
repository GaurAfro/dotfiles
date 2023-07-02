```markdown
# Neovim Setup

This repository contains my personal Neovim configuration, compliant with the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

## Steps to Setup

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

4. Create a symbolic link from the cloned repository's nvim directory to `$XDG_CONFIG_HOME/nvim`:
   ```bash
   ln -s ~/dotfiles/nvim $XDG_CONFIG_HOME/nvim
   ```

## Installing Vim-Plug

[Vim-Plug](https://github.com/junegunn/vim-plug) is a minimalist vim plugin manager. You can install it with the following command:

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Installing Plugins

Once Vim-Plug is installed, you can install the plugins configured in the repository by opening Neovim and entering the following command:

```vim
:PlugInstall
```
```

The `grep` command checks if the line is already present in the `.bashrc` file. The `-q` option silences the output, and the `-F` option enables fixed-string matching (as opposed to regular expression matching). The `||` operator means that if the `grep` command does not find the line (which means it exits with a non-zero status), then the `echo` command will execute and add the line to the file.
