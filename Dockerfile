FROM ubuntu:22.04

WORKDIR /tmp

RUN curl -L -o cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && mv cirrus /usr/local/bin/cirrus \
    && chmod +x /usr/local/bin/cirrus

COPY . .

WORKDIR /tmp
VOLUME ["/tmp/rom", "/tmp/ccache"]
CMD [ "bash", "start" ]
