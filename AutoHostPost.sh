#!/bin/bash

clear
sleep "2"
echo "== SCRIPT DE WORLD-TECK STUDIO == "
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
echo "== Version du script 1.0 AUTOMATIQUE =="
sleep "6"
clear

# ------------------------------------------------------------


echo "Insalltation de HostPost"
sleep "4"
clear


# ------------------------------------------------------------


echo "Mise a jour du raspberry et de Raspbian"
sleep "4"
clear

sudo apt-get update -y && sudo apt-get upgrade -y

echo "Mise a jour TERMINER"
sleep "4"
clear



# ------------------------------------------------------------


echo "Création d'une sauvegarde du fichier de configuration WiFi"
sleep "4"
clear

sudo cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.sav
clear

echo "Suppression du fichier de configuration WiFi pour retourner à une configuration vierge"
sleep "2"
clear

sudo cp /dev/null /etc/wpa_supplicant/wpa_supplicant.conf

echo "Sauvegarde est copie TERMINER"
sleep "4"
clear


# ------------------------------------------------------------

echo "Modification de la region du WIFI"
sleep "4"
echo ".............................."
sleep "4"
echo "Modification MANUELLEMENT"
sleep "4"
clear

sudo raspi-config
clear

echo "Modification TERMINER"
sleep "4"
clear


# ------------------------------------------------------------

confirm()
{
    read -r -p "${1} [y/N] " response

    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

if confirm "ATTENTION : voici l'adressse ip pour vous conntecter sur le reseau RaspAP  10.3.141.0 "; then

echo "Installation de raspAP-webgui"
sleep "4"
clear

wget -q https://git.io/voEUQ -O /tmp/raspap && bash /tmp/raspap -y


else

echo "Installation de raspAP-webgui"
sleep "4"
clear

wget -q https://git.io/voEUQ -O /tmp/raspap && bash /tmp/raspap -y

fi


# ------------------------------------------------------------



echo "Merci d'avoir suivi le tuto..."
sleep "4"
echo ".............................."
