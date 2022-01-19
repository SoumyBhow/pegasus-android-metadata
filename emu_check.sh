#!/bin/sh

NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\x1b[5m'
hasRedDream=false
hasYaba=false
hasMupen=false
hasPPSSPP=false
hasDuckstation=false
hasDrastic=false
hasDolphin=false

#RedDream?
FOLDER=~/storage/shared/Android/data/io.recompiled.redream
if [ -d "$FOLDER" ]; then
	hasRedDream=true
fi
#YabaSanshioro?
FOLDER=~/storage/shared/Android/data/org.devmiyax.yabasanshioro2.pro
if [ -d "$FOLDER" ]; then
	hasYaba=true
fi
#Mupen64
FOLDER=~/storage/shared/Android/data/org.mupen64plusae.v3.fzurita.pro
if [ -d "$FOLDER" ]; then
	hasMupen=true
fi
#PPSSPP
FOLDER=~/storage/shared/Android/data/org.ppsspp.ppsspp
if [ -d "$FOLDER" ]; then
	hasPPSSPP=true
fi
#duckstation
FOLDER=~/storage/shared/duckstation
if [ -d "$FOLDER" ]; then
	hasDuckstation=true
fi
#Drastic
FOLDER=~/storage/shared/DraStic
if [ -d "$FOLDER" ]; then
	hasDrastic=true
fi
#Dolphin
FOLDER=~/storage/shared/dolphin-mmj
if [ -d "$FOLDER" ]; then
	hasDolphin=true
fi

echo -e ""
echo -e "Checking installed emulators..."
echo -e ""
echo -ne "Dreamcast - RedDream..."
if [ hasRedDream==true ]; then
	echo -e  "${GREEN}Installed${NONE}"
else
	echo -e  "${RED}Not installed${NONE}"
	echo "Type Y and press the ${YELLOW}A button${NONE} if you want to install it. A link to the Play Store will open"
	read pause
	termux-open "https://play.google.com/store/apps/details?id=io.recompiled.redream"
fi
echo -ne "Saturn - Yaba Sanshioro 2..."
if [ hasYaba==true ]; then
	echo -e  "${GREEN}Installed${NONE}"
	else
	echo -e  "${RED}Not installed${NONE}"
	echo "Type Y and press the ${YELLOW}A button${NONE} if you want to install it. A link to the Play Store will open"
	read pause
	termux-open "https://play.google.com/store/apps/details?id=org.devmiyax.yabasanshioro2"
fi
echo -ne "Nintendo 64 - Mupen 64 Plus..."
if [ hasMupen==true ]; then
	echo -e  "${GREEN}Installed${NONE}"
	else
	echo -e  "${RED}Not installed${NONE}"
	echo "Type Y and press the ${YELLOW}A button${NONE} if you want to install it. A link to the Play Store will open"
	read pause
	termux-open "https://play.google.com/store/apps/details?id=org.mupen64plusae.v3.fzurita"
fi
echo -ne "PSP - PPSSPP..."
if [ hasPPSSPP==true ]; then
	echo -e  "${GREEN}Installed${NONE}"
	else
	echo -e  "${RED}Not installed${NONE}"
	echo "Type Y and press the ${YELLOW}A button${NONE} if you want to install it. A link to the Play Store will open"
	read pause
	termux-open "https://play.google.com/store/apps/details?id=org.ppsspp.ppsspp"
fi
echo -ne "Playstation - Duckstation..."
if [ hasDuckstation==true ]; then
	echo -e  "${GREEN}Installed${NONE}"
	else
	echo -e  "${RED}Not installed${NONE}"
	echo "Type Y and press the ${YELLOW}A button${NONE} if you want to install it. A link to the Play Store will open"
	read pause
	termux-open "https://play.google.com/store/apps/details?id=com.github.stenzek.duckstation"
fi
echo -ne "Nintendo DS - Drastic..."
if [ hasDrastic==true ]; then
	echo -e  "${GREEN}Installed${NONE}"
else
	echo -e  "${RED}Not installed${NONE}"
	echo "Type Y and press the ${YELLOW}A button${NONE} if you want to install it. A link to the Play Store will open"
	read pause
	termux-open "https://play.google.com/store/apps/details?id=com.dsemu.drastic"
fi

echo -ne "Nintendo Wii & GameCube - Dolphin MMJR..."
if [ hasDrastic==true ]; then
	echo -e  "${GREEN}Installed${NONE}"
else
	echo -e  "${RED}Not installed${NONE}"
	echo "Type Y and press the ${YELLOW}A button${NONE} if you want to install it."
	read pause
	wget  -q --show-progress https://github.com/Bankaimaster999/Dolphin-MMJR/releases/download/1.0-11460/Dolphin.MMJR.v11460.apk ~/dragoonDoriseTools/
	xdg-open ~/dragoonDoriseTools/Dolphin.MMJR.v11460.apk
fi


echo -e "${BOLD}If you chose to not install some emulators, remember that you need them if you want to play those systems${NONE}"
