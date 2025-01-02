#!/bin/bash

echo "$([ "$1" == "install" ] && echo "Install" || echo "Update") Discord"

# Download Discord
cd ~

curl -o discord.tar.gz -J --location-trusted --max-redirs 10 "https://discord.com/api/download/stable?platform=linux&format=tar.gz"

# Unzip
tar -xzf discord.tar.gz

# Copy files to /opt/discord/
sudo mkdir -p /opt/discord
sudo cp -r Discord/* /opt/discord/

# Edit desktop file for custom folder
sudo sed -i 's|Exec=/usr/share/discord/Discord|Exec=/usr/bin/discord|' /opt/discord/discord.desktop
sudo sed -i 's|Icon=discord|Icon=/opt/discord/discord.png|' /opt/discord/discord.desktop

# install
if [ $1 == "install" ]; then
 # set symlink
 sudo ln -sf /opt/discord/Discord /usr/bin/discord

 echo "$"
fi

# Add execute permission and set root user
sudo chown root:root -R /opt/discord/
sudo chmod -R +x /opt/discord/

# Delete temp files
rm -rf discord.tar.gz Discord

# Launch Vencord Installer/Updater
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"
