#!/bin/sh

# Make Flatpak application exports visible to Plasma.
flatpak_user="${XDG_DATA_HOME:-$HOME/.local/share}/flatpak/exports/share"
flatpak_system="/var/lib/flatpak/exports/share"

case ":${XDG_DATA_DIRS:-}:" in
    *":${flatpak_system}:"*) ;;
    *)
        XDG_DATA_DIRS="${flatpak_system}${XDG_DATA_DIRS:+:${XDG_DATA_DIRS}}"
        ;;
esac

case ":${XDG_DATA_DIRS:-}:" in
    *":${flatpak_user}:"*) ;;
    *)
        XDG_DATA_DIRS="${flatpak_user}${XDG_DATA_DIRS:+:${XDG_DATA_DIRS}}"
        ;;
esac

# Supply the normal XDG defaults if nothing else supplied them.
XDG_DATA_DIRS="${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"

export XDG_DATA_DIRS

unset flatpak_user flatpak_system
