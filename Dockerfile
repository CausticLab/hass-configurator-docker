FROM python:3.9-alpine
LABEL maintainer="Martin <Munsio> Treml"
WORKDIR /app

ARG HC_BUILD_VERSION

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash git openssh && \
    pip install --no-cache-dir hass-configurator==${HC_BUILD_VERSION} gitpython pyotp

COPY ./run.sh /app/
RUN chmod a+x ./run.sh

EXPOSE 3218
VOLUME /config
ENTRYPOINT ["/app/run.sh"]
