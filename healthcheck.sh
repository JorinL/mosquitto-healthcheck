#!/bin/ash
if [ $(apk info | grep -c mosquitto-clients) -ne "1" ]; then
        apk add mosquitto-clients
fi


if [ -z "$USERNAME" ]; then
        if [ $(mosquitto_sub -i moquitto-health -d -t $TOPIC -C "1" | grep -c received) -ne "0" ]; then
                echo "0"
        else
                echo "1"
        fi
else
        if [ $(mosquitto_sub -i moquitto-health -d -t $TOPIC -u $USERNAME -P $PASSWORD -C "1" | grep -c received) -ne "0" ]; then
                echo "0"
        else

                echo "1"
        fi
fi
