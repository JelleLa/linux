#!/bin/bash


sudo eopkg it dialog &&

## START DIALOG

dialog --title "Solus Setup Script" --msgbox "Welcome to the Solus Setup Script! This Script will install neccesary software and clone useful GitHub repositories. Click Ok to continue. (c) 2020 Jelle Langedijk. All Rights Reserved" 10 40 &&

## UPDATE DIALOG

dialog --title "Solus Setup Script" --yesno "Check for updates first?" 10 40

case "$?" in
    0)  sudo eopkg upgrade ;;
    1)  ;;
esac

## NEOFETCH DIALOG

dialog --title "Solus Setup Script" --yesno "Install Neofetch?" 10 40

case "$?" in
    0)  sudo eopkg it neofetch ;;
    1)  ;;
esac


## VIM DIALOG

dialog --title "Solus Setup Script" --yesno "Install VIM?" 10 40

case "$?" in
    0)  sudo eopkg it vim; wget https://github.com/JelleLa/linux/blob/master/.vimrc ;;
    1)  ;;
esac

## BASHRC DIALOG

dialog --title "Solus Setup Script" --yesno "Replace Bashrc?" 10 40

case "$?" in
    0)  wget https://github.com/JelleLa/linux/blob/master/.bashrc ;;
    1)  ;;
esac

## i3 DIALOG

dialog --title "Solus Setup Script" --yesno "Install i3?" 10 40

case "$?" in
    0)  sudo eopkg it i3 ;;
    1)  ;;
esac

## Picom DIALOG

dialog --title "Solus Setup Script" --yesno "Install Picom?" 10 40

case "$?" in
    0)  sudo eopkg it picom ;;
    1)  ;;
esac

## TexLive DIALOG

dialog --title "Solus Setup Script" --yesno "Install TexLive?" 10 40

case "$?" in
    0)  sudo eopkg it texlive && texlive-all ;;
    1)  ;;
esac

## LightDM GTK Greeter Settings DIALOG

dialog --title "Solus Setup Script" --yesno "Install LightDM GTK Greeter Settings?" 10 40

case "$?" in
    0)  sudo eopkg it lightdm-gtk-greeter-settings ;;
    1)  ;;
esac

## Rofi DIALOG

dialog --title "Solus Setup Script" --yesno "Install Rofi?" 10 40

case "$?" in
    0)  sudo eopkg it rofi ;;
    1)  ;;
esac

## rxvt-unicode / urxvt DIALOG

dialog --title "Solus Setup Script" --yesno "Install Urxvt/Rxvt-Unicode?" 10 40

case "$?" in
    0)  sudo eopkg it rxvt-unicode ;;
    1)  ;;
esac

## fontawesome DIALOG

dialog --title "Solus Setup Script" --yesno "Install FontAwesome?" 10 40

case "$?" in
    0)  sudo eopkg it font-awesome-ttf ;;
    1)  ;;
esac


## SCRCPY DIALOG

dialog --title "Solus Setup Script" --yesno "Install SCRCPY Android Screen Mirroring Tool?" 10 40

case "$?" in
    0)  sudo eopkg it scrcpy ;;
    1)  ;;
esac

## JULIA DIALOG

dialog --title "Solus Setup Script" --yesno "Install The Julia Programming Language?" 10 40

case "$?" in
    0)  sudo eopkg it julia ;;
    1)  ;;
esac

## PIPES DIALOG

dialog --title "Solus Setup Script" --yesno "Install Pipes.sh Terminal Screensaver?" 10 40

case "$?" in
    0)  sudo eopkg it pipes-sh ;;
    1)  ;;
esac









## Autoremove DIALOG

dialog --title "Solus Setup Script" --yesno "Autoremove Packages that are no dependency?" 10 40

case "$?" in
    0)  sudo eopkg rmo ;;
    1)  ;;
esac

## END DIALOG
 dialog --title "Solus Setup Script" --infobox "Script is done! Redirected to the shell." 10 40 
