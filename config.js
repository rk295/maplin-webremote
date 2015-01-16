// Set to the hostname of your websockets enabled MQTT broker
host = '';
// Set to the port of your MQTT broker
port = 9010;

// Topic to subscribe to for the list of switches
switchTopic = 'rooms/switches';
// Topic to publish button actions
toggleTopic = "rooms/toggle";

// Leave uncommented to not use authentication to the broker
// username = 'username";
// password = 'password";

// Not tested with TLS! WMMV.
useTLS = false;

// Safe to leave
cleansession = true;
