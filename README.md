# hass-configurator-docker
Linux x32/64 and ARM (raspberry) builds for the hass-configurator

[![Build Status](https://travis-ci.org/CausticLab/hass-configurator-docker.svg?branch=0.3.3)](https://travis-ci.org/CausticLab/hass-configurator-docker)


## Usage

Example docker-compose.yaml
```yaml
  hass-configurator:
    image: "causticlab/hass-configurator-docker:arm-0.3.3"
    restart: always
    ports:
      - "3218:3218/tcp"
    networks:
      - hass-network
    volumes:
      - "./data/configurator-config:/config"
      - "./data/config:/hass-config"
```
Please remember to change the tag to your architecture

#### Configuration
Be sure to map the config folder of your homeassistant instance to the configurator container and set the `basepath` in your configuration.
The configuration needs to be mapped to `/config` and needs to be named `settings.conf`.

As with Verion 0.3.3 it is also possible to use environment vars to set configurations but you will still need your hass-config folder mapped into the container.

#### GIT Integration

In order to use the git integration with hass-configurator you have to use one of the following options.

1. Mount the ssh files
```yaml
  hass-configurator:
    volumes:
      - "/path/.ssh/id_rsa:/root/.ssh/id_rsa:ro"
      - "/path/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub:ro"
      - "/path/.ssh/known_hosts:/root/.ssh/known_hosts:rw"
```

2. Use the https version with an github token
```
https://<github username>:<some token>@github.com/<github username>/<some repo>.git
```

## Links

- Original Repository by [danielperna84](https://github.com/danielperna84/hass-configurator)
- Docker Images are on [docker hub](https://hub.docker.com/r/causticlab/hass-configurator-docker/)
- The corresponding [github repository](https://github.com/CausticLab/hass-configurator-docker)