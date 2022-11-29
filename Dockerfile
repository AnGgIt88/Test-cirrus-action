FROM anggit86/Ubuntu:22.05

WORKDIR /tmp

RUN curl --create-dirs -L -o /usr/local/bin/cirrus -L -o cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && chmod a+rx /usr/local/bin/cirrus

COPY start .

WORKDIR /tmp
VOLUME ["/tmp/rom", "/tmp/ccache"]
CMD [ "bash", "start" ]
