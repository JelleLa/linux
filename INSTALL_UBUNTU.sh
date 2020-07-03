## THIS SCRIPT INSTALLS ALL MY NECESSARY SOFTWARE TO UBUNTU LINUX ##
## (c) JELLE LANGEDIJK 2020 ##
## TO RUN: sudo sh a.sh ## 





echo
echo 
## ENSURE SYSTEM IS UP TO DATE ##
echo "CHECKING FOR UPDATES" &&
/bin/sleep 5
sudo apt update &&
/bin/sleep 1

echo
echo 
## UPDATE SYSTEM ##
echo "UPDATING" &&
/bin/sleep 5
sudo apt upgrade &&
/bin/sleep 1

echo
echo 
## INSTALL NEOFETCH ##
echo "INSTALLING NEOFETCH AND SCREENFETCH" &&
/bin/sleep 5
sudo apt install neofetch && sudo apt install screenfetch &&
/bin/sleep 1

## INSTALL GIT ##
echo "INSTALLING GIT" &&
/bin/sleep 5
sudo apt install git
/bin/sleep 1

echo
echo 
## EXFAT SETUP ##


read -p "INSTALL EXFAT SUPPORT? (enter y (yes) or n (no))" ef
case "$ef" in
    y)  echo; echo; sudo apt-get install exfat-fuse exfat-utils ;;
    n)  echo; echo; echo SKIP EXFAT SUPPORT INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## VIM SETUP ##

read -p "INSTALL VIM-NOX ? (enter y (yes) or n (no))" la
case "$la" in
    y)  echo; echo; sudo apt install vim-nox ;;
    n)  echo; echo; echo SKIP LATEX INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## LATEX SETUP ##

read -p "INSTALL LATEX SUPPORT ? (enter y (yes) or n (no))" la
case "$la" in
    y)  echo; echo; sudo apt install texlive ;;
    n)  echo; echo; echo SKIP LATEX INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## OCTAVE SETUP ##

read -p "INSTALL OCTAVE ? (enter y (yes) or n (no))" oc
case "$oc" in
    y)  echo; echo; sudo apt install octave ;;
    n)  echo; echo; echo SKIP OCTAVE INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## LOLLYPOP SETUP ##

read -p "INSTALL LOLLYPOP MUSIC PLAYER ? (enter y (yes) or n (no))" lo
case "$lo" in
    y)  echo; echo; sudo apt install lollypop ;;
    n)  echo; echo; echo SKIP LOLLYPOP MUSIC PLAYER INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## OBS-Studio SETUP ##

read -p "INSTALL OBS STUDIO ? (enter y (yes) or n (no))" ob
case "$ob" in
    y)  echo; echo; sudo apt install obs-studio ;;
    n)  echo; echo; echo SKIP OBS STUDIO INSTALLATION ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## REPLACE SNAP STORE WITH GNOME SOFTWARE ##

read -p "REPLACE SNAP STORE WITH GNOME SOFTWARE? STARTING FROM UBUNTU 20.04, GNOME SOFTWARE IS REPLACED BY SNAP STORE. (enter y (yes) or n (no))" sn
case "$sn" in
    y)  echo; echo; sudo snap remove snap-store && sudo apt install gnome-software  ;;
    n)  echo; echo; echo KEEP SNAP STORE ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 1

echo
echo
## AUTOREMOVE ##

read -p "REMOVE UNNECESSARY PACKAGES?. (enter y (yes) or n (no))" au
case "$au" in
    y)  echo; echo; sudo apt autoremove  ;;
    n)  echo; echo; echo SKIP AUTOREMOVE ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac

/bin/sleep 5

echo ALL SOFTWARE INSTALLED!
echo
/bin/sleep 2

read -p "REBOOT NOW?. (enter y (yes) or n (no))" re
case "$re" in
    y)  echo; echo; reboot ;;
    n)  echo; echo; echo  ;;
    *)  echo; echo; echo "enter y (yes) or n (no)" ;;
esac












































