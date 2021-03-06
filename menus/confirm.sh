#!/bin/bash
#
# [PlexGuide Menu]
#
# GitHub:   https://github.com/Admin9705/PlexGuide.com-The-Awesome-Plex-Server
# Author:   Admin9705 - Deiteq
# URL:      https://plexguide.com
#
# PlexGuide Copyright (C) 2018 PlexGuide.com
# Licensed under GNU General Public License v3.0 GPL-3 (in short)
#
#   You may copy, distribute and modify the software as long as you track
#   changes/dates in source files. Any modifications to our software
#   including (via compiler) GPL-licensed code must also be made available
#   under the GPL along with build & install instructions.
#
#################################################################################

############################################################################# MINI MENU SELECTION - START
export NCURSES_NO_UTF8_ACS=1

HEIGHT=9
WIDTH=42
CHOICE_HEIGHT=2
BACKTITLE="Visit PlexGuide.com - Automations Made Simple"
TITLE="Make A Decision!"

OPTIONS=(Z "No : Take Me Back to the Editons Menu!"
         A "Yes: Setup & Switch Editons!")

CHOICE=$(dialog --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
case $CHOICE in
        Z)
            echo "no" > /tmp/menu.choice
            exit 
            ;;
        A)
            echo "yes" > /tmp/menu.choice
            exit
            ;;

esac
