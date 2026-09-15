# Dotfiles

Hello and welcome to my dotfiles, designed to work between macOS and standard Fedora, all managed by [chezmoi](https://www.chezmoi.io/).

## What's Included

- [mise](https://github.com/jdx/mise): manages language versions, with the global `mise.toml` providing Ruby (with rails, debug, foreman, htmlbeautifier, ruby-lsp, solargraph, and standard) Go, Flutter, Java (temurin), Python, Node (with Yarn), and Rust. All at their latest versions.
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [starship](https://github.com/starship/starship): with [catppuccin](https://github.com/catppuccin/nvim) theme.
- [homebrew](https://github.com/Homebrew): macOS formulas and casks, see [Brewfile](https://github.com/wilderyns/dotfiles/blob/main/Brewfile)
- [astronvim](https://github.com/AstroNvim/AstroNvim)
- dnf (Fedora):
  - 1Password, Docker Engine, Ghostty, Sunshine, VS Code, Chromium, Firefox, Proton VPN, Neovim, and Zsh
  - Bat, btop, eza, fastfetch, fd, fzf, GitHub CLI, rclone, ripgrep, tldr, yt-dlp, and zoxide
- additional Fedora tools:
  - Docker Desktop, Zed, Starship, LazyGit, LazyDocker, Oh My Zsh, and Nerd Fonts
  - an opt-in rclone user service for mounting iCloud Drive in `~/iCloud`
- flatpak:
  - Bolt, Bruno, Cider, Discord, Faugus, FileZilla
  - Gear Lever, LibreOffice, OBS Studio, Obsidian
  - RetroDECK, SyncThingy, Trayscale, and desktop-plus

## Workflow

```sh
dots          # change to the source directory
dots nvim     # open the source directory in Neovim
dots code     # open the source directory in VS Code
dots zed      # open the source directory in Zed
dots diff     # preview changes that would be applied
dots apply    # apply source changes to the home directory
dots update   # pull from GitHub and apply on this machine
dots push     # re-add managed changes, commit, and push to GitHub
```

Edit templated files such as `dot_zshrc.tmpl` in the source directory. Plain
managed files can also be edited in the home directory and imported with
`chezmoi re-add <path>`. `dots push` runs this re-add step interactively before
staging the complete source repository and asking for a commit message.

## New machine

Install chezmoi according to the [installation instructions](https://www.chezmoi.io/install/). Then run:

```sh
chezmoi init --apply wilderyns
```

On macOS, the first apply installs Homebrew and applies the Brewfile. On Fedora,
it installs the packages in `.config/dotfiles/dnf-packages.txt`, configuring
the required 1Password, Docker, Ghostty, Proton VPN, Sunshine, and VS Code repositories first. Fedora
also installs Docker Desktop, multimedia codecs, archive tools, Zed and Starship
from their official installers, the configured Nerd Fonts, and LazyGit and
LazyDocker through mise. Both platforms install mise and Oh My Zsh from their
official installers, configured mise tools, VS Code extensions, and the
remaining configuration. Maple Mono Nerd Font is selected in Ghostty, Zed,
and VS Code.

Docker Engine starts automatically on Fedora. Docker Desktop is installed as an
optional alternative but is not enabled at login, so it can be launched manually
without routinely running both daemons together.

### iCloud Drive on Fedora

Fedora installs rclone and FUSE, but the iCloud mount is not enabled automatically.
Authenticate locally and name the configured remote `icloud`:

```sh
rclone config
```

Test the mount read-only before enabling writes:

```sh
mkdir -p ~/iCloud
rclone mount icloud: ~/iCloud --read-only --vfs-cache-mode full
```

After testing, stop the foreground mount and enable the managed read/write user
service:

```sh
systemctl --user enable --now rclone-icloud.service
```

The service exposes `~/iCloud` in Dolphin and deliberately leaves rclone's local
credentials in `~/.config/rclone/rclone.conf` outside chezmoi. Apple trust tokens
normally require renewal about every 30 days with `rclone reconnect icloud:`.

Linux Flatpaks are listed in `.config/dotfiles/flatpaks.txt` and installed at
system scope from Flathub. The installer adds and updates listed applications;
it does not remove unlisted applications.
