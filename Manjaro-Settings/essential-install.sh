#!/bin/bash

echo "::::::: Installing essentials packages :::::::"
echo " "
echo "@) Awesome: A really cool Window Manager"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo pacman -S awesome ; break;;
        No ) break;;
    esac
done   
echo "@) Light : Simple  brightness utility "
select yn in "Yes" "No";do
    case $yn in 
	Yes ) yaourt -S light; break;;
	No ) break;;
    esac
done

echo "@) Batterymon : A simple battery monitor tray 
icon using acpi "
select yn in "Yes" "No";do
    case $yn in
        Yes ) yaourt -S batterymon-clone; break;;
        No ) break;;
    esac
done

echo "::: Antergos dependencies ::: "
	
echo "@) lightdm :lightweight display manager "
select yn in "Yes" "No";do
    case $yn in
        Yes ) yaourt -S lightdm; break;;
        No ) break;;
    esac
done

echo "@)  lightdm-webkit2-greeter "
select yn in "Yes" "No";do
    case $yn in
        Yes ) yaourt -S lightdm-webkit2-greeter; 
break;;
        No ) break;;
    esac
done

echo "@) antergos-wallpapers "
select yn in "Yes" "No";do
    case $yn in
        Yes )sudo mkdir 
/usr/share/antergos;sudo 
mkdir /usr/share/antergos/wallpapers/; 
yaourt -S antergos-wallpapers; break;;
        No ) break;;
    esac
done

echo "look antergos settings to continue"
echo " "
echo "@)  spotify:A proprietary peer-to-peer music 
streaming service "
select yn in "Yes" "No";do
    case $yn in
        Yes ) yaourt -S spotify;yaourt -S blockify;break;;
        No ) break;;
    esac
done

echo "@) Multibootusb : Boot multiple live Linux 
distros from a usb flash drive. "
select yn in "Yes" "No";do
    case $yn in
        Yes ) yaourt -S multibootusb;
break;;
        No ) break;;
    esac
done


echo "@) Atom : Chrome-based text editor from Github"
select yn in "Yes" "No";do
    case $yn in
        Yes ) yaourt -S atom-editor;
break;;
        No ) break;;
    esac
done

echo "@) Brackets : fast,simple editor supported by 
adobe. editor for HTML, CSS and JavaScript. "
select yn in "Yes" "No";do
    case $yn in
        Yes ) yaourt -S brackets;
break;;
        No ) exit;;
    esac
done
# exit
