# i3
i3 Fenstermanager installieren und anpassen.
## 1. Installation der benötigten Pakete
```
sudo pacman -S i3 i3-gaps i3lock xorg lxappearance nitrogen nautilus firefox dmenu ttf-font-awesome polkit alsa-utils pulseaudio-alsa pulseaudio speedtest-cli alacritty
yay -S ly j4-dmenu-desktop bumblebee-status ulauncher
```
Falls `dmenu` nicht funktionieren sollte nutzen sie folgende Befehle.
```
sudo nano /etc/locale.gen
sudo locale-gen
sudo localectl set-locale LANG=de_DE.UTF-8
```
