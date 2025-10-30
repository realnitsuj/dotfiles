[darkman]: https://darkman.whynothugo.nl/

# System

[Arch Linux](https://archlinux.org/) with [uwsm](https://github.com/Vladimir-csp/uwsm/) to manage my Wayland session.

| Components          | Tools                                             |
|:-------------------:|:-------------------------------------------------:|
| Compositor          | [Sway](https://swaywm.org/)                       |
| Taskbar             | [Waybar](https://github.com/Alexays/Waybar)       |
| Terminal emulator   | [Foot](https://codeberg.org/dnkl/foot)            |
| File manager        | [Thunar](https://docs.xfce.org/xfce/thunar/start) |
| Text editor         | [Neovim](https://neovim.io/)                      |
| Launcher/dmenu      | [Fuzzel](https://codeberg.org/dnkl/fuzzel/)       |
| Notification daemon | [mako](https://github.com/emersion/mako)          |
| Screen locker       | [swaylock](https://github.com/swaywm/swaylock)    |


# Colorscheme

I currently have [solarized](https://ethanschoonover.com/solarized/), and I use [darkman][] for switching between light and dark modes.

Basically a config looks like this :

```
.config/sway
├── .colorscheme -> /home/justin/.config/sway/solarized-dark
├── config
├── solarized-dark
└── solarized-light
```

In `config`, I have the proper `include`, and in my [darkman][] scripts (`~/.local/share/light-mode.d` and `~/.local/share/dark-mode.d`), all symlinks are changed when I switch the mode.

To keep a change of colorscheme easy, I use the [base16](https://github.com/chriskempson/base16/) syntax in my `config`.


# [Neovim](https://neovim.io/)

I have one `init.lua`, with around 60 lines, and 6 plugins. I used to have a big config, with a lot of stuff and configuration, but I try to embrace "defaults are the best".


# Misc

- `export MANPAGER="nvim +Man!"` in `.bash_profile` : better than `less`
