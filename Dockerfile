FROM anggit86/ubuntu:22.04

RUN git clone --depth 1 https://github.com/AnGgIt88/Test-cirrus-action /tmp \
   && chmod 777 /tmp

RUN curl --create-dirs -L -o /usr/local/bin/cirrus -L -o cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && chmod a+rx /usr/local/bin/cirrus

WORKDIR /tmp
CMD [ "bash", "start" ]
