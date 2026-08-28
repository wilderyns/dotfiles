# Dotfiles

Hello and welcome to my dotfiles, designed to work across macOS, Bazzite/Fedora
atomic desktops, and Omarchy/Arch, all managed by
[chezmoi](https://www.chezmoi.io/).

## What's Included

- [mise](https://github.com/jdx/mise): manages language versions, with the global `mise.toml` providing Ruby (with rails, debug, foreman, htmlbeautifier, ruby-lsp, solargraph, and standard) Go, Flutter, Java (temurin), Python, Node (with Yarn), and Rust. All at their latest versions.
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) on macOS and non-Arch Linux
- [starship](https://github.com/starship/starship): with
  [catppuccin](https://github.com/catppuccin/nvim) theme on macOS and non-Arch
  Linux. Omarchy's built in theme support means this isn't needed.
- [homebrew](https://github.com/Homebrew): a number of formulas and casks, see
  [Brewfile](https://github.com/wilderyns/dotfiles/blob/main/Brewfile). Only relevant for mac and atomic/Bazzite.
- [astronvim](https://github.com/AstroNvim/AstroNvim): `~/.config/nvim` Maybe replaced by LazyVim in the future. Omarchy keeps its native `omarchy-nvim` LazyVim configuration, which chezmoi leaves entirely untouched.
- rpm-ostree (Bazzite and atomic distros):
  - Ghostty
  - 1Password
- flatpak:
  - Bruno, Cider, Discord, DistroShelf
  - Faugus, Filelight, FileZilla, Gear Lever
  - Obsidian, Podman Desktop, Proton VPN
  - RetroDECK, SyncThingy, Trayscale
- Omarchy native installation:
  - Cider through the Cider Collective pacman repository
  - Ghostty, Firefox, VS Code, and 1Password
  - Sunshine, Tailscale, Steam, RetroArch, and Bluetooth Xbox controller support
  - The [Better Displays](https://omarchyplugins.com/plugin.html?id=better.displays)
    and [hyprmoncfg](https://omarchyplugins.com/plugin.html?id=crmne.hyprmoncfg)
    Omarchy plugins

## Daily workflow

The source directory is an ordinary Git repository, so no special editor is
required:

```sh
dots          # change to the source directory
dots nvim     # open the source directory in Neovim
dots code     # open the source directory in VS Code
dotdiff       # preview changes that would be applied
dotapply      # apply source changes to the home directory
dotupdate     # pull from GitHub and apply on this machine
```

Edit templated files such as `dot_zshrc.tmpl` in the source directory. Plain
managed files can also be edited in the home directory and imported with
`chezmoi re-add <path>`.

## New machine

After chezmoi is available, initialize and apply the repository:

```sh
chezmoi init --apply wilderyns
```

The first apply selects a platform profile automatically from the operating
system and Linux distribution.

- macOS and non-Arch Linux install Homebrew, apply the Brewfile, install mise
  and Oh My Zsh, and configure zsh.
- Bazzite also installs the selected system Flatpaks and layers its atomic
  desktop packages.
- Omarchy keeps its preinstalled mise and Neovim binaries, applies the shared
  mise configuration, retains Omarchy's LazyVim setup, and uses
  Omarchy's own installers for applications and services (bar cider). It does not install
  Homebrew, Oh My Zsh, or Flatpaks, and it leaves Omarchy's shell, Starship,
  Ghostty, and Neovim configuration alone.

On Bazzite (and other Fedora atomic distros), Ghostty and 1Password are layered with rpm-ostree. 1Password is layered to deal with inter-application communication (specifically with Firefox's 1Password extension), and Ghostty is layered because that's their recommended install method for atomic distributions.

Linux Flatpaks are listed in `.config/dotfiles/flatpaks.txt` and installed at
system scope from Flathub. The installer adds and updates listed applications;
it does not remove unlisted applications. The extra application-menu workaround
is restricted to Bazzite Plasma: its persistent environment hook is only
rendered on Bazzite and is only loaded by Plasma, while the immediate Plasma
cache refresh also verifies the active desktop session before it runs.
