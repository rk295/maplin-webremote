#!/bin/bash

# © Copyright 2015 Robin Kearney
# Licensed under the MIT license with an additional non-advertising clause
# See https://github.com/rk295/maplin-webremote

# Quick hack in bash to turn a vaguely user friendly lump of JSON
# into a single line, retained message on a given MQTT topic for
# the Web UI to parse into a list of buttons

host="trin"
topic="rooms/switches"

cat <<EOF | tr '\n' ' ' | sed 's/ //g' | mosquitto_pub -h $host -t $topic -r -s
{
    "rooms": [
        {
            "name": "Lounge",
            "channel": 4,
            "button": 1
        },
        {
            "name": "Tank",
            "channel": 4,
            "button": 2
        },
        {
            "name": "Sofa",
            "channel": 4,
            "button": 3
        },
        {
            "name": "Outside",
            "channel": 4,
            "button": 4
        },
        {
            "name": "Spareroom",
            "channel": 3,
            "button": 1
        },
        {
            "name": "OurRoom",
            "channel": 3,
            "button": 2
        }
    ]
}
EOF
