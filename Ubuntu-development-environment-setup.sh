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
# Install virtualenv
pip3 install virtualenv
# add virtualenv to PATH
echo "export PATH=$PATH:~/.local/bin" >> ~/.zshrc
source ~/.zshrc
# check virtualenv version
virtualenv --version
# Create a virtual environment
virtualenv venv
# Activate the virtual environment
source venv/bin/activate
# Deactivate the virtual environment
deactivate
# install jupyterlab
pip install jupyterlab
# run jupyterlab
jupyter-lab

# Install Anaconda
# https://docs.anaconda.com/free/anaconda/install/linux/
# or simply
# bash ~/Downloads/Anaconda3-2021.05-Linux-x86_64.sh

# Install c++ compiler
sudo apt install g++ -y

# Install latest LTS version of Node.js and npm
# https://deb.nodesource.com/
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update && sudo apt-get install nodejs -y
node --version
npm --version

# Install PHP and MySQL
# https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-20-04
sudo apt install php libapache2-mod-php php-mysql -y
php --version
sudo apt install mysql-server -y
mysql --version
# Secure MySQL
sudo mysql_secure_installation


# Clean up
sudo apt autoremove -y
