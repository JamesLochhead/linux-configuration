#!/usr/bin/env bash

gsettings set org.gnome.desktop.interface text-scaling-factor 1.3
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-solid'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Light'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'adaptive'
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
default_profile_uuid=$(gsettings get org.gnome.Terminal.ProfilesList default | sed "s/'\(.*\)'/\1/")
(sed "s/DEFAULT_UUID/$default_profile_uuid/" < gsettings/default-profile) | dconf load /org/gnome/terminal/
gsettings set org.gnome.desktop.interface font-name 'Euclid Circular A 11'
gsettings set org.gnome.desktop.interface document-font-name 'Euclid Circular A 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Euclid Circular A 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Source Code Pro 12'
gsettings set org.gtk.Settings.FileChooser sort-directories-first true
gsettings set org.gnome.nautilus.preferences click-policy 'single'
gsettings set org.gnome.nautilus.list-view use-tree-view true
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
