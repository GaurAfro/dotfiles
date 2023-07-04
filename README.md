# Dotfiles

This repository contains my personal dotfiles. These are the configuration files for tools I use like Neovim, tmux, and others.

## Getting Started with help from [ChatGPT](https://chat.openai.com/)

### [My Initial Prompt For A Chat](https://github.com/GaurAfro/dotfiles/blob/master/UseChatGPT.md)

Before setting up my dotfiles, I wanted to use ChatGPT to help me streamline my development. I started by writing a prompt for ChatGPT to help me with my dotfiles and kept expanding from there. I used the following prompt:
[My Initial Prompt For A Chat](https://github.com/GaurAfro/dotfiles/blob/master/UseChatGPT.md)

## Installation

setup Git and GitHub:

1. **Install Git**

    First, we ensured that Git was installed on your machine. You can install Git on a Debian-based system with the following command:

    ```bash
    sudo apt-get install git
    ```

2. **Configure Git**

    After installing Git, we configured your user name and email address. This information is used to identify the commits you make in Git. 

    ```bash
    git config --global user.name "Your Name"
    git config --global user.email "youremail@domain.com"
    ```

3. **Generate SSH Key**

    Then, we generated a new SSH key that can be used to authenticate with GitHub. The command to generate the key is:

    ```bash
    ssh-keygen -t ed25519 -C "youremail@domain.com"
    ```

    When you run this command, it asks you where to save the key. By pressing enter, you can accept the default location.

4. **Add SSH Key to SSH-Agent**

    We added your newly created SSH key to the SSH-agent, a program that manages your SSH keys. This is done with the following commands:

    ```bash
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
    ```

5. **Copy SSH Key to Clipboard**

    Next, we copied your public SSH key to your clipboard. This is done with the `xclip` command:

    ```bash
    xclip -sel clip < ~/.ssh/id_ed25519.pub
    ```

    If `xclip` is not installed, it can be installed with 
    ```bash
    sudo apt-get install xclip
    ```.

6. **Add SSH Key to GitHub**

    We then went to GitHub and added the copied SSH key to your account. This is done in the "SSH and GPG keys" section of your account settings on GitHub.

7. **Test SSH Connection**

    To ensure everything was setup correctly, we tested the SSH connection with the following command:

    ```bash
    ssh -T git@github.com
    ```

    If the setup was successful, you should see a message saying that you've successfully authenticated.

8. **Clone Repository with SSH**

    Finally, we cloned your repository using the SSH URL:

    ```bash
    git clone git@github.com:GaurAfro/dotfiles.git
    ```

    This completes the setup of Git and GitHub using SSH for authentication. 

This summary should help you as a reference for setting up Git and GitHub in the future. If you have any more questions or need further clarification on any of these steps, feel free to ask!
