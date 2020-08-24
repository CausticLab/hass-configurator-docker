#!/bin/sh

if [ ! -f /config/settings.conf ]; then
    echo "No configuration file found proceeding with default values"
    hass-configurator
else
    echo "Configuration file found starting configurator with provided settings"
    hass-configurator /config/settings.conf
fi
