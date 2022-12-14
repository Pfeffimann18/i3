# i3 - Fenstermanager
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/i3)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/i3)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/i3)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/i3)

<p align="center">
  <img src="https://thumbs2.imgbox.com/2a/14/uyLelKOx_t.png" width="900px">
</p>

## 1. Installation der benötigten Pakete

Installieren sie als erstes [yay](https://github.com/Pfeffimann18/LinuxSetup#yay---aur-helper) als AUR-Helper.

```bash
sudo pacman -S i3-gaps i3lock xorg xfce4-settings nitrogen thunar firefox dmenu ttf-font-awesome polkit alsa-utils pulseaudio-alsa pulseaudioreb alacritty geany picom engrampa libsecret libgnome-keyring
yay -S ly j4-dmenu-desktop bumblebee-status ulauncher
```
Falls `dmenu` nicht funktionieren sollte nutzen sie folgende Befehle.
```bash
sudo nano /etc/locale.gen
sudo locale-gen
sudo localectl set-locale LANG=de_DE.UTF-8
```
```bash
cp alacritt.yml ~/.config
cp picom.conf ~/.config
```
Sollten Kontextmenüs durchichtig sein, kopieren sie sich die `picom.conf` von `/etc/xdg/picom.conf` nach `~/.config` und entfernen sie aus der letzten Sektion `tooltip`, `popup_menu` und `dropdown_menu`. Das Hintergrundbild wird mit `nitrogen` konfiguriert.
</br>

## 2. Konfiguration
Mod-Taste festlegen und Mausfokus konfigurieren mit `set $mod Mod4` und `focus_follows_mouse no`. Schriftarten festlegen mit `font pango:Ubuntu Regular, FontAwesome 12`.
```
bindsym $mod+t exec alacritty
bindsym $mod+e exec nautilus
bindsym $mod+d exec --no-startup-id /bin/j4-dmenu-desktop
bindsym $mod+space exec --no-startup-id /bin/ulauncher
```
> Tastenkürzel für Programme

</br>

```
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right
```
> fokusiertes Fenster ändern

</br>

```
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right
```
> fokusiertes Fenster verschieben

</br>

```
bindsym $mod+h split h
bindsym $mod+v split v
```
> neues Fenster horizontal/vertikal öffnen

</br>

```
bar {
	status_command /usr/share/bumblebee-status/bumblebee-status \
	-t greyish-powerline \
	-m speedtest nic cpu memory disk pasink battery datetime \
	-p nic.format: '{ssid} - {ip}' \
	-p datetime.format: strftime"%d.%m. %H:%M:%S " \
	-p brightness.use_acpi \

colors {
    background #4d4d4d
    statusline $white
    focused_workspace #0082e6 #0082e6 #000000
    active_workspace #000000 #4d4d4d #4d4d4d
    inactive_workspace #4d4d4d #666666 #ffffff
    urgent_workspace #d33682 #d33682 #fdf6e3
    }
}
```
> Bumblebee Statusleiste

## 3. Alacritty
<p align="center">
  <img src="https://thumbs2.imgbox.com/a5/9e/7LSlF4Cj_t.png" width="900px">
</p>

### Fensteroptionen für Ränder und Tarnsparenz.
 ```
window:
  padding:
    x: 10
    y: 10

  opacity: 0.75
```
</br>

### Fontart, Größe und Zeilenabstand einstellen.
```
font:
  normal:
    family: SF Mono
    style: Regular

  bold:
    family: SF Mono
    style: Bold

  italic:
    family: SF Mono
    style: Italic

  bold_italic:
    family: SF Mono
    style: Bold Italic

  size: 7

  offset:
    x: 0
    y: 2
```
</br>

### Purify Farbthema
```
colors:
 selection:
  text:       '0xFAFAFA'
  background: '0x252834'

 # Normal colors
  primary:
  background: '0x313440'
  foreground: '0xFAFAFA'
 normal:
  black:   '0x282C34'
  red:     '0xFF6059'
  green:   '0x5FFF87'
  yellow:  '0xFFFF87'
  blue:    '0x5FAFFF'
  magenta: '0xAF87FF'
  cyan:    '0x5FAFFF'
  white:   '0xFAFAFA'

 # Bright colors
 bright:
  black:   '0x282C34'
  red:     '0xFF6059'
  green:   '0x5FFF87'
  yellow:  '0xFFFF87'
  blue:    '0x5FAFFF'
  magenta: '0xAF87FF'
  cyan:    '0x5FAFFF'
  white:   '0xFAFAFA'
```
</br>

### blinkender Cursorbalken
```
cursor:
  style:
    shape: Beam
    blinking: Always
```
</br>

### Shortcuts für Kopieren und Einfügen
```
 - { key: V,              mods: Control,						  action: Paste            }
 - { key: C,              mods: Control|Shift,        action: Copy             }
```

## 4. Bumblebee Statusleiste

```bash
bar {
	position top
	status_command /usr/share/bumblebee-status/bumblebee-status \
		-t solarized-powerline \
		-m memory cpu disk nic kernel pasink datetime \
		-p nic.format: {ssid} {strength} \
		-p datetime.format: strftime"%d.%m. %H:%M " \
		-p brightness.use_acpi \

colors {
    background #4F4F4F
    statusline $white
    
    # Farbe der Grenze, Hintergrund und Text
    focused_workspace #0860f2 #0860f2 #ffffff
    active_workspace #4F4F4F #4F4F4F #ffffff
    inactive_workspace #4F4F4F #4F4F4F #ffffff
    urgent_workspace #a75615 #a75615 #ffffff
    }
}

