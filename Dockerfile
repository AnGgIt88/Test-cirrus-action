FROM ubuntu:22.04

WORKDIR /tmp

RUN apt-get -yqq update \
    && apt-get install --no-install-recommends -yqq apt-utils wget curl jq --fix-broken --fix-missing

RUN curl --create-dirs -L -o /usr/local/bin/cirrus -O -L cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && chmod +x /usr/local/bin/cirrus

COPY . .

WORKDIR /tmp
VOLUME ["/tmp/rom", "/tmp/ccache"]
CMD [ "bash", "start" ]
