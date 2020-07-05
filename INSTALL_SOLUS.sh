## THIS SCRIPT INSTALLS ALL MY NECESSARY SOFTWARE TO UBUNTU LINUX ##
## (c) JELLE LANGEDIJK 2020 ##
## TO RUN: sudo sh INSTALL_SOLUS.sh ## 


echo "
___     _____         __ _ _ ___ ____  __ _       __
 | |\ |(_  | /\ | |  (_ / |_) | |_)|  (_ / \| | |(_ 
_|_| \|__) |/--\|_|_ __)\_| \_|_|  |  __)\_/|_|_|__)
"

echo "(c) 2020 Jelle Langedijk, all rights reserved"


echo
echo 
## ENSURE SYSTEM IS UP TO DATE ##
echo "CHECKING FOR UPDATES" &&
/bin/sleep 5
sudo eopkg upgrade &&
/bin/sleep 1


echo
echo 
## INSTALL NEOFETCH ##
echo "INSTALLING NEOFETCH" &&
/bin/sleep 5
sudo eopkg it neofetch &&
/bin/sleep 1

## INSTALL GIT ##
echo "INSTALLING GIT" &&
/bin/sleep 5
sudo eopkg it git
/bin/sleep 1


echo
echo
## VIM SETUP ##

read -p "INSTALL VIM? (enter y (yes) or n (no))" la
case "$la" in
    y)  echo; echo; sudo eopkg it vim ;;
    n)  echo; echo; echo SKIPPED VIM INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1


echo
echo
## LATEX SETUP ##

read -p "INSTALL TeXLive ? (enter y (yes) or n (no))" la
case "$la" in
    y)  echo; echo; sudo eopkg it texlive ;;
    n)  echo; echo; echo SKIPPED TeXLive INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1


echo
echo
## LOLLYPOP SETUP ##

read -p "INSTALL LOLLYPOP MUSIC PLAYER ? (enter y (yes) or n (no))" lo
case "$lo" in
    y)  echo; echo; sudo eopkg it lollypop ;;
    n)  echo; echo; echo SKIPPED LOLLYPOP MUSIC PLAYER INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## OBS-Studio SETUP ##

read -p "INSTALL OBS STUDIO ? (enter y (yes) or n (no))" ob
case "$ob" in
    y)  echo; echo; sudo eopkg it obs-studio ;;
    n)  echo; echo; echo SKIPPED OBS STUDIO INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## i3 SETUP ##

read -p "INSTALL i3, lxappearance (THEMING), nitrogen (WALLPAPER MANAGER)  ? (enter y (yes) or n (no))" ob
case "$ob" in
    y)  echo; echo; sudo eopkg it i3 && sudo eopkg it lxappearance && sudo eopkg it nitrogen ;;
    n)  echo; echo; echo SKIPPED i3 INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1


echo ALL SOFTWARE INSTALLED!
echo
/bin/sleep 2

read -p "REBOOT NOW?. (enter y (yes) or n (no))" re
case "$re" in
    y)  echo; echo; reboot ;;
    n)  echo; echo; echo  ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac
