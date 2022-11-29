FROM ubuntu:22.04

WORKDIR /tmp

RUN apt-get -yqq update \
    && apt-get install --no-install-recommends -yqq jq --fix-broken --fix-missing \
    && curl --create-dirs -L -o /usr/local/bin/cirrus -O -L cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && chmod a+rx /usr/local/bin/cirrus

COPY . .

WORKDIR /tmp
VOLUME ["/tmp/rom", "/tmp/ccache"]
CMD [ "bash", "start" ]
