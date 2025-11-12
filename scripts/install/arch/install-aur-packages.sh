#!/bin/bash

# This script will install a set of packages from the AUR using the Paru AUR helper.

paru -S --noconfirm zen-browser-bin
echo "Zen Browser installed. You can run it by typing 'zen-browser' in the terminal."

paru -S --noconfirm spotify-launcher
echo "Spotify Launcher installed. You can run it by typing 'spotify-launcher' in the terminal."	

paru -S --noconfirm proton-mail-bin proton-pass-bin proton-authenticator-bin
echo "Proton Mail, Proton Pass, and Proton Authenticator installed. You can run them by typing 'proton-mail', 'proton-pass', and 'proton-authenticator' in the terminal."

paru -S --noconfirm onlyoffice-bin
echo "OnlyOffice installed. You can run it by typing 'onlyoffice' in the terminal."

echo "All AUR packages have been installed."