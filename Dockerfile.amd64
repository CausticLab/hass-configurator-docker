FROM python:3-alpine
MAINTAINER Martin <Munsio> Treml

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN pip install --no-cache-dir gitpython pyotp

WORKDIR /app
COPY ./src/configurator.py ./run.sh /app/
RUN chmod a+x ./configurator.py ./run.sh

# Default listening port.
EXPOSE 3218

# The configuration yaml for persistance.
VOLUME /config

ENTRYPOINT ["/app/run.sh"]
