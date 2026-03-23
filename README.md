# Rocko_DE_Final

**CachyOS + Hyprland + Noctalia** — William's personal desktop environment.

---

## Stack

| Component       | Package / Tool                          |
|----------------|-----------------------------------------|
| OS             | CachyOS                                 |
| Compositor     | Hyprland                                |
| Shell          | Noctalia Shell + Noctalia QS            |
| Terminal       | Kitty                                   |
| Font           | JetBrains Mono Nerd Font                |
| File Manager   | Thunar + Yazi                           |
| Editor         | Neovim (LazyVim, McLaren theme)         |
| Fetch          | Fastfetch (dog avatar)                  |
| Login Manager  | SDDM — sddm-astronaut-theme (hyprland_kath) |
| Shell (default)| Fish                                    |
| Icons          | Papirus-Dark                            |
| GTK Theme      | adw-gtk3 (dark)                         |

---

## Deploy

```bash
git clone https://github.com/ohnoibrokeit/Rocko_DE_Final.git
cd Rocko_DE_Final && bash deploy.sh
```

**Prerequisites:** `paru` must be installed before running the deploy script.

---

## What deploy.sh does

1. Installs all packages via paru
2. Creates required config directories
3. Deploys Hyprland, Noctalia, Kitty, Fastfetch, Fish, Bash, and Neovim configs
4. Applies GTK/Qt theming and font settings
5. Installs SDDM with sddm-astronaut-theme (hyprland_kath variant) via the upstream setup script
6. Installs udev rules for NuPhy Air75 HE WebHID access
7. Sets Fish as the default shell

---

## Post-deploy steps

1. Add wallpapers to `~/Pictures/Wallpapers/ultrawide/` and `~/Pictures/Wallpapers/4k/`
2. Add avatar to `~/Pictures/avatar-nobg.png` (used by Fastfetch)
3. Run `qt6ct` and select the Noctalia color scheme
4. Reboot
5. On first launch — Noctalia Settings → Color Scheme → Templates
   - Enable: GTK, Qt, Hyprland, Kitty, User Templates
6. Noctalia Settings → Color Scheme → Templates → Advanced
   - Enable User Templates to theme prompts with wallpaper colors

---

## Key bindings

| Binding             | Action                  |
|--------------------|-------------------------|
| `Super + D`        | App launcher            |
| `Super + \``       | Drop-down terminal      |
| `Super + F1`       | Drop-down file manager  |
| `Super + /`        | Keybind cheatsheet      |
| `Super + Shift + W`| Random wallpaper        |
| `Super + M`        | Control center          |
| `Super + X`        | Session menu            |

---

## Hardware notes

- Primary display: 5120x1440 ultrawide OLED (DP-2)
- Secondary display: 4K (DP-3)
- Keyboard: NuPhy Air75 HE (udev rules included for WebHID)
- GPU: RTX 4090 (HDR Steam launch flags documented in repo)
