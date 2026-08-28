# Dotfiles

Hello and welcome to my dotfiles, designed to work between my Mac and Bazzite installs (but should theoretically work on Fedora too), all managed by [chezmoi](https://www.chezmoi.io/).

## What's Included
- [mise](https://github.com/jdx/mise): manages language versions, with the global `mise.toml` providing Ruby (with rails, debug, foreman, htmlbeautifier, ruby-lsp, solargraph, and standard) Go, Flutter, Java (temurin), Python, Node (with Yarn), and Rust. All at their latest versions.
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [starship](https://github.com/starship/starship): with [catppuccin](https://github.com/catppuccin/nvim) theme.
- [homebrew](https://github.com/Homebrew): a number of formulas and casks, see [Brewfile](https://github.com/wilderyns/dotfiles/blob/main/Brewfile)
- [astronvim](https://github.com/AstroNvim/AstroNvim)
- rpm-ostree (bazzite and atomic distros):
  - Ghostty
  - 1Password
- flatpak:
  - Bruno, Cider, Discord, DistroShelf
  - Faugus, Filelight, FileZilla, Gear Lever
  - Obsidian, Podman Desktop, Proton VPN
  - RetroDECK, SyncThingy, Trayscale

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

The first apply installs Homebrew, applies the Brewfile, installs mise and Oh
My Zsh from their official installers, installs configured mise tools and VS
Code extensions, installs the selected system Flatpaks on Linux, and applies
the remaining configuration.

On Bazzite (and other Fedora atomic distros), Ghostty and 1Password are layered with rpm-ostree. 1Password is layered to deal with inter-application communication (specifically with Firefox's 1Password extension), and Ghostty is layered because that's their recommended install method for atomic distributions.

Linux Flatpaks are listed in `.config/dotfiles/flatpaks.txt` and installed at
system scope from Flathub. The installer adds and updates listed applications;
it does not remove unlisted applications.
