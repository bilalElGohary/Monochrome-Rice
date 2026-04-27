# Gruvbox Hyprland Rice
A performance-focused, Gruvbox-themed setup for Hyprland.

## Screenshots
![Rice](ScreenShots/1.png)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-blue?style=for-the-badge&logo=hyprland)
![Theme](https://img.shields.io/badge/Theme-Gruvbox-orange?style=for-the-badge)

## Details
- **OS:** EndeavourOS
- **WM:** Hyprland
- **Terminal:** Alacritty
- **Editor:** Neovim (LazyVim based)
- **Colors:** Gruvbox (Dark)

## Dependencies
To get this rice working, you'll need the following packages:

### Install Core Packages (Official Repos)

1. Arch
```bash
sudo pacman -S --needed alacritty rofi-wayland waybar swww hypridle hyprlock git micro firefox dunst
# Use an AUR helper for these:
yay -S wlogout hyprshot
```
2. Fedora
```bash
sudo dnf install alacritty rofi-wayland waybar swww hypridle hyprlock wlogout git micro firefox dunst
```
3. Ubuntu / Debian
```bash
sudo apt update && sudo apt install alacritty rofi waybar git micro firefox dunst
# Note: hyprlock/swww may require manual compilation on older versions
```
4. Nixos
```bash
environment.systemPackages = with pkgs; [
  alacritty
  rofi-wayland
  waybar
  swww
  hypridle
  hyprlock
  wlogout
  hyprshot
  micro
  firefox
  dunst
];
```

## Fast Setup (Deployment)
Once the dependencies are installed, you can apply the configurations:

1. Clone the repository
```bash
git clone https://github.com/bilalElGohary/Hyprland-Rice.git
cd HyprlandRice
```
2. Move the config files to your local directory
```bash
cp -r DotFiles/.config/* ~/.config/
```

## Special Thanks
Thanks for checking out my setup! If you find this useful, don't forget to star the repository. Keep ricing

---
## Get in touch
[![Github](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/bilalElGohary)
