#!/bin/bash

cat <<EOF | tr '\n' ' ' | sed 's/ //g' | mosquitto_pub -h trin -t rooms/switches -r -s
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
        }
    ]
}
EOF
