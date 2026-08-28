# Dotfiles

Cross-platform dotfiles managed by [chezmoi](https://www.chezmoi.io/) for macOS
and Fedora-derived Linux desktops, including Bazzite.

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
Code extensions, and applies the remaining configuration.

On a Fedora atomic desktop, Ghostty and 1Password are layered with rpm-ostree.
That step requests administrator authorization and requires a reboot before the
applications become available. Non-atomic Linux intentionally skips these two
system packages.
