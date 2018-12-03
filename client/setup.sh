#!/bin/bash
LOCAL_NAME="Example"
#Set REMOTE_REPORT_URL to server file.
REMOTE_REPORT_URL="http://localhost/locserver/serv.php"
SETUP_CRON=1
# Setup cron to send repeated signals
if (( $SETUP_CRON )); then
    CLIENTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
    #Do not add crontab line repeatedly
    if [[ $(crontab -l | grep -o "/bin/bash $CLIENTPATH/report.sh" | wc -l) -le 0 ]]; then
        crontab -l | { cat; echo "0 * * * * /bin/bash $CLIENTPATH/report.sh"; } | crontab -;
        echo "Adding crontab entry to upload IP at regular intervals";
    fi
fi
