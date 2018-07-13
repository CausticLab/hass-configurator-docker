# hass-configurator-docker
Linux x32/64 and ARM (raspberry) builds for the hass-configurator

[![Build Status](https://travis-ci.org/CausticLab/hass-configurator-docker.svg?branch=0.2.9)](https://travis-ci.org/CausticLab/hass-configurator-docker)


### Usage

Example docker-compose.yaml
```yaml
  hass-configurator:
    image: "causticlab/hass-configurator-docker:arm-0.2.9"
    restart: always
    ports:
      - "3218:3218/tcp"
    networks:
      - hass-network
    volumes:
      - "./data/configurator-config:/config"
      - "./data/config:/hass-config"
```
Be sure to map the config folder of your homeassistant instance to the configurator container and set the `basepath` in your configuration.
The configuration needs to be mapped to `/config` and needs to be named `settings.conf`.
Please remember to change the tag to your architecture


### Links

- Original Repository by [danielperna86](https://github.com/danielperna84/hass-configurator)
- Docker Images are on [docker hub](https://hub.docker.com/r/causticlab/hass-configurator-docker/)
- The corresponding [github repository](https://github.com/CausticLab/hass-configurator-docker)