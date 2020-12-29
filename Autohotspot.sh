#!/bin/bash

clear
sleep "2"
echo "== SCRIPT DE WORLD-TECK STUDIO == "
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
echo "== Version du script 2.0 AUTOMATIQUE =="
sleep "6"
clear

# ------------------------------------------------------------


echo "Insalltation de hotspot"
sleep "4"
clear


# ------------------------------------------------------------


echo "Mise à jour du raspberry et de Raspbian"
sleep "4"
clear

sudo apt-get update -y && sudo apt-get upgrade -y

echo "Mise à jour TERMINER"
sleep "4"
clear



# ------------------------------------------------------------


echo "Création d'une sauvegarde du fichier de configuration WiFi"
sleep "4"
clear

sudo cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.sav
clear

echo "Suppression du fichier de configuration WiFi"
sleep "2"
clear

sudo cp /dev/null /etc/wpa_supplicant/wpa_supplicant.conf

echo "Sauvegarde est copie TERMINER"
sleep "4"
clear


# ------------------------------------------------------------

echo "Modification de la région du WIFI"
echo ".............................."
sleep "4"
clear

echo "Modification ......"
sleep "4"
clear

sudo raspi-config
clear

echo "Modification TERMINER"
sleep "4"
clear


# ------------------------------------------------------------
echo "Prenez note des informations suivantes"
sleep "4"
echo ""
sleep "1"
echo "Votre adresse de connexion via l'explorer"
echo "------------------------------------------"
sleep "2"
sudo hostname -I
echo ""
sleep "2"
echo "ID: admin  Mots de passe: secret"
sleep "2"
echo ""
sleep "1"


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

if confirm "ATTENTION : Avez-vous bien pris note des information ci-dessu ? "; then

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

clear
echo "Merci d'avoir suivi le tuto..."
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
sleep "6"
clear
echo "Redemarrage dans 6"
sleep "1"
clear
echo "Redemarrage dans 5"
sleep "1"
clear
echo "Redemarrage dans 4"
sleep "1"
clear
echo "Redemarrage dans 3"
sleep "1"
clear
echo "Redemarrage dans 2"
sleep "1"
clear
echo "Redemarrage dans 1"
sleep "1"
clear
echo "...REBOOT..."
sleep "4"
sudo reboot


