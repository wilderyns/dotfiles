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
  - Bruno, Cider, Chromium, Discord
  - DistroShelf, Faugus, Filelight, FileZilla
  - Gear Lever, Obsidian, Podman Desktop
  - Proton VPN, RetroDECK, SyncThingy, Trayscale

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

The first apply installs Homebrew, applies the Brewfile, installs mise and Oh
My Zsh from their official installers, installs configured mise tools and VS
Code extensions, installs the selected system Flatpaks on Linux, and applies
the remaining configuration.

On Bazzite (and other Fedora atomic distros), Ghostty and 1Password are layered with rpm-ostree. 1Password is layered to deal with inter-application communication (specifically with Firefox's 1Password extension), and Ghostty is layered because that's their recommended install method for atomic distributions.

Linux Flatpaks are listed in `.config/dotfiles/flatpaks.txt` and installed at
system scope from Flathub. The installer adds and updates listed applications;
it does not remove unlisted applications. The extra application-menu workaround
is restricted to Bazzite Plasma: its persistent environment hook is only
rendered on Bazzite and is only loaded by Plasma, while the immediate Plasma
cache refresh also verifies the active desktop session before it runs.
