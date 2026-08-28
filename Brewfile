# Dotfile syncing
brew 'chezmoi'

# Universal Blue provides Linux desktop casks used on Bazzite.
tap 'ublue-os/tap' if OS.linux?

### Dev tools and languages ###
brew 'php'
cask 'jamovi' if OS.mac?

# Language runtimes and SDKs are managed in ~/.config/mise/config.toml.
# brew 'mise'
# We now install mise using their recommended: curl https://mise.run/zsh | sh

brew 'libpq'
brew 'wget'
brew 'rclone'
brew 'zsh'
brew 'starship'
brew 'hugo'
brew 'openvpn'
brew 'opentofu'
brew 'docker'
brew 'docker-compose'
brew 'podman' if OS.linux?
brew 'podman-compose' if OS.linux?
# CocoaPods is also managed by Mise through its gem backend.
cask 'android-platform-tools' if OS.mac?
cask 'android-commandlinetools' if OS.mac?
cask 'android-ndk' if OS.mac?
cask 'visual-studio-code' if OS.mac?
cask 'visual-studio-code-linux' if OS.linux?

# Latex document preparation
brew 'pandoc'
brew 'tectonic'
brew 'typst'

# General dev stuff
brew "openssl@3"
brew "readline"
brew "sqlite3"
brew "xz"
brew "zlib"
brew "libyaml"
brew 'curl'
brew 'gnu-tar'
brew 'gzip'
cask 'godot' if OS.mac?
brew 'neovim'
brew 'git'
brew 'lazygit'
brew 'make'
brew 'telnet'
brew 'gpg'
brew 'gawk'
brew 'mkcert'
brew 'ripgrep'
brew 'fd'
# The upstream cask ships native macOS and Linux binaries.
cask 'codex'
# Neovim/Mason manages tree-sitter-cli and language servers such as vtsls.

# Web dev projects
brew 'mysql'
brew 'postgresql@18'
cask 'postgres-app' if OS.mac?
cask 'pgadmin4' if OS.mac?
brew 'redis'

brew 'yt-dlp'
brew 'watchman'

### Popular Mac apps ###
cask_args force: true if OS.mac?
cask '1password' if OS.mac?
cask '1password-cli' if OS.mac?
cask 'appcleaner'	if OS.mac?
cask 'balenaetcher'	if OS.mac?
cask 'chatgpt'	if OS.mac?
cask 'docker-desktop'	if OS.mac?
cask 'daisydisk'	if OS.mac?
cask 'discord'	if OS.mac?
cask 'cyberduck'	if OS.mac?
cask 'firefox'	if OS.mac?
cask 'gcloud-cli'	if OS.mac?
cask 'google-chrome'	if OS.mac?
cask 'google-drive'	if OS.mac?
cask 'ghostty'	if OS.mac?
cask 'microsoft-teams'	if OS.mac?
cask 'microsoft-office'	if OS.mac?
cask 'moonlight'	if OS.mac?
cask 'obsidian'	if OS.mac?
cask 'bruno' if OS.mac?
cask 'protonvpn'	if OS.mac?
cask 'scrivener' if OS.mac?
cask 'steam'   if OS.mac?
cask 'syncthing-app'   if OS.mac?
cask 'the-unarchiver'   if OS.mac?
brew 'tailscale' if OS.mac?
cask 'tailscale-app' if OS.mac?
cask 'tunnelblick' if OS.mac?
cask 'vlc' if OS.mac?
cask 'whatsapp' if OS.mac?
cask 'windows-app'  if OS.mac?
cask 'utm' if OS.mac?
# cask 'typora' if OS.mac? Really like this but no bibliography support so Obsidian it is
cask 'zotero' if OS.mac?

# Fonts
cask 'font-anonymous-pro' if OS.mac?
cask 'font-fira-code-nerd-font' if OS.mac?
cask 'font-fira-code' if OS.mac?
cask 'font-fira-mono-for-powerline' if OS.mac?
cask 'font-fira-mono-nerd-font' if OS.mac?
cask 'font-fira-mono' if OS.mac?
cask 'font-hack-nerd-font' if OS.mac?
cask 'font-hack' if OS.mac?
cask 'font-inconsolata' if OS.mac?
cask 'font-jetbrains-mono-nerd-font' if OS.mac?
cask 'font-jetbrains-mono' if OS.mac?
cask 'font-monaspace' if OS.mac?
cask 'font-monaspace-nf' if OS.mac?
cask 'font-nunito' if OS.mac?
cask 'font-open-sans' if OS.mac?
cask 'font-source-code-pro' if OS.mac?
cask 'font-source-code-pro-for-powerline' if OS.mac?
cask 'font-sauce-code-pro-nerd-font' if OS.mac?
cask 'font-dejavu' if OS.mac?
cask 'font-liberation' if OS.mac?

### Pentesting and cybersecurity tools ###
brew 'aircrack-ng'
brew 'amass'
brew 'arp-scan'
brew 'arping'
brew 'arjun'
brew 'bettercap'
brew 'cadaver'
brew 'crunch'
brew 'ettercap'
brew 'feroxbuster'
brew 'ffuf'
brew 'fierce'
brew 'gobuster'
brew 'hashcat'
brew 'hydra'
brew 'nikto'
brew 'john'
brew 'macchanger'
brew 'masscan'
brew 'medusa'
brew 'nmap'
brew 'netcat'
brew 'nuclei'
brew 'reaver'
brew 'recon-ng'
brew 'sherlock'
brew 'snort'
brew 'sqlmap'
brew 'subfinder'
brew 'sslscan'
brew 'tcpdump'
brew 'socat'
brew 'testdisk'
brew 'theharvester'
brew 'yara'
cask 'burp-suite' if OS.mac?
cask 'caido' if OS.mac?
# cask 'metasploit' has been deprecated as of 01/09/2026
cask 'mitmproxy' if OS.mac?
brew 'wireshark'
cask 'wireshark-app' if OS.mac?

### Cybersecurity tools unavailable
# cask 'maltego' requires Rosetta on Mac and we're not dealing with that
# dirb
# sharphound
# sqlsus
# set
# sara
# rubeus
# assetfinder
# armitage
# spike
# wfuzz
# wapiti
# wafw00f
# airgeddon
# evil-winrm
# wifipumpkin3
# tiger
# hash-identifier
# eyewitness
# emailharvester
# dvwa
# chirp
# bully
# sqlninja
# smtp-user-enum
# bed
# nuclei
# dnsrecon
# dmitry
# crackmapexec
# cewl
# bloodyad
# wpcscan
# dirsearch
# dirbuster
# stegosuite
# wifiphisher
# websploit
# legion
# netexec
# dnsenum
# mimikatz
# dnschef
# impacket-scripts
# whatweb
# cowpatty
# hping3
# autopsy
# responder
# beef-xss
# steghide
# spiderfoot
# sublist3r
# mitm6
# fern-wifi-cracker
# xsser
# scapy
# netdiscover

### App store apps that you can install with the 'mas' tool ###
### You'll need to sign in to the App Store first before running the script. ###
### Visit https://github.com/mas-cli/mas#-usage for more info. ###
brew 'mas' if OS.mac?
# mas '1Blocker', id: 1365531024
# mas '1Password', id: 1333542190
# mas 'DuckDuckGo Privacy Essentials', id: 1482920575
# mas 'GarageBand', id: 682658836
# mas 'iMovie', id: 408981434
# mas 'Keynote', id: 361285480
# mas 'Numbers', id: 361304891
# mas 'Pages', id: 361309726
mas 'PDFGear: PDF Editor & Reader', id: 6469021132 if OS.mac?
mas 'Pixelmator Pro', id: 1289583905 if OS.mac?
mas 'Xcode', id: 497799835 if OS.mac?
