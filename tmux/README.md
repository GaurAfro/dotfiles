---

# Tmux Configuration Setup

This guide outlines the steps to set up and manage this tmux configuration following the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

## XDG Base Directory Specification

The XDG Base Directory Specification is an effort to standardize where applications save user-specific files to keep home directories clean and organized. It defines several environment variables:

- `$XDG_DATA_HOME`: Where user-specific data files should be written.
- `$XDG_CONFIG_HOME`: Where user-specific configuration files should be written.
- `$XDG_CACHE_HOME`: Where user-specific non-essential (cached) data should be written.

```bash
# XDG Base Directory Specification compliant configuration for tmux
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
mkdir -p $XDG_CONFIG_HOME/tmux
mkdir -p $XDG_DATA_HOME/tmux
mkdir -p $XDG_CACHE_HOME/tmux
```

## Symlinking dotfiles to XDG paths

```bash
# This command will create a symbolic link between your dotfiles and the appropriate XDG directory
ln -s ~/dotfiles/tmux/ $XDG_CONFIG_HOME/tmux/
```

## Tmux Plugin Manager (TPM)

The Tmux Plugin Manager (TPM) is a tool that allows you to easily install and manage tmux plugins. You can find more information about TPM at the [official TPM GitHub page](https://github.com/tmux-plugins/tpm).

To install TPM, use the following commands:

```bash
# Clone TPM
git clone https://github.com/tmux-plugins/tpm $XDG_CONFIG_HOME/tmux/plugins/tpm
```

Once TPM is installed, you can install new plugins by adding the plugin to your tmux.conf file and then pressing `prefix + I`. This will clone the plugin into the `~/.tmux/plugins/` directory and source it. To remove plugins, you can simply remove them from your tmux.conf file and press `prefix + alt + u`【186†source】.

## Tmux Alias and Auto-start

Add these lines to your bashrc or equivalent shell configuration file:

```bash
# Point tmux to the correct configuration file
alias tmux="tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"

# Start tmux on every shell login
if command -v tmux>/dev/null; then
   [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi
```

These lines set an alias for tmux to ensure it uses the right configuration file and also start tmux automatically whenever a shell is launched.

---
