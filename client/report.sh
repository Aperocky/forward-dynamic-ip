#!/bin/bash

CLIENTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
source $CLIENTPATH/setup.sh

if ! [[ $LOCAL_NAME ]]; then
    LOCAL_NAME=$USER;
fi

if ! [[ $REMOTE_REPORT_URL ]]; then
    echo "Remote host not found, set REMOTE_REPORT_URL";
    exit 1;
fi

CURRTIME=$(date)
curl -d "name=$LOCAL_NAME&time=$CURRTIME" -X POST $REMOTE_REPORT_URL

