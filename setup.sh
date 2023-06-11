#!/usr/bin/sh

# Core Programs
# Programing
sudo pacman -S python-pip rustup npm clang cmake make just meson ninja podman git 

# Rust config
rustup default stable
rustup component add rust-analyzer

# Paru setup
cd /tmp
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd

# Hyprland & wayland apps
paru -S hyprland xdg-desktop-portal-hyprland wofi wl-clipboard darkman wlogout waybar mpv imv mako swayidle swaylock wlsunset gamescope xdg-desktop-portal-gtk grim slurp light hyprshot swaybg

# Terminal apps
paru -S neovim fd ripgrep exa unzip stow firefox flatpak starship htop ranger bat mandoc

# Text apps & fonts
paru -S inter-font ttf-jetbrains-mono typst evince ttf-twemoji ttf-font-awesome ttf-liberation 

# Theme & Icons
paru -S papirus-icon-theme adw-gtk3 qt6-wayland qt5-wayland

# Polkit & Keyring
paru -S gnome-keyring polkit-gnome

# Audio & bluetooth
paru -S pulsemixer pavucontrol blueman tlp tlp-rdw

# VMs
sudo pacman -S gnome-boxes

# Setup
mkdir -p ~/.local/share/fonts
mkdir -p ~/.local/bin
ln -s /usr/bin/wezterm ~/.local/bin/xterm

# Group setup
sudo usermod -aG video $(whoami)
sudo usermod -aG libvirt $(whoami)
sudo usermod -a -G uucp $(whoami)
sudo usermod -a -G lock $(whoami)

# System services
sudo systemctl enable --now libvirtd
sudo systemctl enable --now bluetooth

sudo systemctl enable tlp.service
sudo systemctl enable NetworkManager-dispatcher.service
sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket

# User service
systemctl --user enable --now darkman.service

# Flatpak setup
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub dev.alextren.Spot -y
flatpak install flathub org.gnome.Geary -y
flatpak install flathub com.jgraph.drawio.desktop -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark -y
flatpak install flathub org.onlyoffice.desktopeditors -y
flatpak install flathub us.zoom.Zoom -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub flatseal -y

# PIO setup
pip install -U platformio
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/develop/platformio/assets/system/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules
