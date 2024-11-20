# Install/Update Discord Script

A simple Bash script to install or update Discord on Linux systems. The script downloads the latest stable version of Discord, extracts the files, and configures the application for use. Additionally, it installs or updates [Vencord](https://github.com/Vendicated/VencordInstaller), a custom modification for Discord. If you don't want to install Vencord, you can simply comment or remove the corresponding lines at the end ofthe script.

## Features

- **Install or Update**: Detects whether you're installing Discord for the first time or updating an existing installation.
- **Automated Setup**: Handles downloading, extracting, and placing files in the appropriate directories.
- **Desktop Integration**: Updates the `.desktop` file for custom configurations.
- **Permission Management**: Ensures proper permissions and ownership for Discord's installation folder.
- **Vencord Installer**: Integrates the installation or update of Vencord for enhanced Discord features.

## Requirements

- `curl` and `tar` utilities available.
- Sudo privileges for system modifications.

## Installation

Clone the repository or download the script directly.

```bash
git clone https://github.com/moonlight58/Install-UpdateDiscord.git
cd InstallUpdateDiscord
```

## Usage

Run the script with either `install` or `update` as an argument:

### Install Discord
```bash
bash install_update_discord.sh install
# or 
./install_update_discord.sh install
```

### Update Discord
```bash
bash install_update_discord.sh update
# or
./install_update_discord.sh update
```

## What the Script Does

1. Downloads the latest stable version of Discord from its official API.
2. Extracts the tar.gz and copies files to `/opt/discord`.
3. Configures the `.desktop` file for custom paths and icons.
4. (For installation only) Creates a symbolic link for the `discord` executable in `/usr/bin/`.
5. Ensures proper permissions for the installation directory.
6. Cleans up temporary files used during the installation.
7. Launches the Vencord installer to set up or update custom modifications.

## Notes

- Ensure that you have sufficient permissions to execute the script and modify system files.
- For manual debugging, you can run the script line by line.
