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


echo "Copie de sauvegarde du fichier de configuration original du WiFi"
sleep "4"
clear

sudo cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.org && sudo  rm  /etc/wpa_supplicant/wpa_supplicant.conf

echo "Copie TERMINER"
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
clear

echo "Installation de raspAP-webgui"
sleep "4"
clear

wget -q https://git.io/voEUQ -O /tmp/raspap &amp;&amp; bash /tmp/raspap -y

else
clear

echo "Installation de raspAP-webgui"
sleep "4"
clear

wget -q https://git.io/voEUQ -O /tmp/raspap &amp;&amp; bash /tmp/raspap -y
 
fi


# ------------------------------------------------------------


echo "Merci d'avoir suivi le tuto..."
sleep "4"
echo ".............................."
sleep "1"
echo "Copier coller le code : googlesamples-assistant-pushtotalk --project-id IDPROJECT --device-model-id VOTREID"
sleep "1"
echo ".............................."
sleep "1"
echo "Copier coller le code : sudo reboot"
sleep "1"
echo ".............................."
sleep "4"
