#!/bin/bash

# On WSL-based Linux, no need to install git, docker or vscode

# Update and upgrade packages
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y 

# Install Zsh
# https://phoenixnap.com/kb/install-zsh-ubuntu
sudo apt install zsh -y
zsh --version
# Make Zsh the default shell environment
chsh -s $(which zsh)
# Restart the terminal, and check the default shell environment (Maybe you need to populate default configs by pressing 2)
echo $SHELL
# Install Oh My Zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# you can also go with a custome and lovely theme if you wish

# Install build-essential for compiling code
# sudo apt install build-essential

# Install Python and pip
sudo apt install python3 -y
python3 --version
sudo apt-get update
sudo apt install python3-pip -y
pip3 --version

# Install latest LTS version of Node.js and npm
# https://deb.nodesource.com/
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update && sudo apt-get install nodejs -y
node --version
npm --version

# Clean up
sudo apt autoremove -y
