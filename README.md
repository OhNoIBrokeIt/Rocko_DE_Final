# Rocko_DE_Final

A clean, minimal Hyprland desktop built on CachyOS with Noctalia shell.

## Stack
- **OS**: CachyOS (BORE scheduler)
- **Compositor**: Hyprland
- **Shell**: Noctalia (Quickshell/QML)
- **Colors**: Matugen (Material Design 3) — wallpaper-driven, updates everything automatically
- **Terminal**: Kitty + Maple Mono NF
- **Idle/OLED**: hypridle staged chain (dim → lock → DPMS off → suspend)
- **Scratchpads**: pyprland
- **Editor**: Neovim (LazyVim)

## Monitors
- **DP-2**: 5120x1440@240Hz OLED ultrawide (primary, workspaces 1-6)
- **DP-3**: 3840x2160@144Hz 4K (left, 1.25x scaling, workspaces 7-9)

## Install
```bash
git clone https://github.com/ohnoibrokeit/Rocko_DE_Final.git
cd Rocko_DE_Final
bash deploy.sh
```

## Post-Install
1. Add wallpapers to `~/Pictures/Wallpapers/ultrawide/` and `~/Pictures/Wallpapers/4k/`
2. Add avatar to `~/Pictures/avatar-nobg.png`
3. Run `qt6ct` and select `noctalia` color scheme
4. Noctalia Settings → Color Scheme → Templates → enable GTK, Qt, Hyprland, Kitty
5. Reboot

## Key Bindings
| Key | Action |
|-----|--------|
| Super+D | App launcher |
| Super+T | Terminal |
| Super+B | Browser |
| Super+E | File manager |
| Super+M | Control center |
| Super+X | Session menu |
| Super+N | Notifications |
| Super+Shift+N | Do not disturb |
| Super+Shift+W | Random wallpaper |
| Super+I | Toggle idle inhibitor |
| Super+` | Drop-down terminal |
| Super+F1 | Drop-down file manager |
| Super+/ | Keybind cheatsheet |
| Super+comma | Settings |
