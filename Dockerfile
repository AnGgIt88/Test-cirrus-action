FROM anggit86/ubuntu:22.04

RUN wget https://raw.githubusercontent.com/AnGgIt88/Test-cirrus-action/gcc-master/start \
    && chmod +x start

RUN curl --create-dirs -L -o /usr/local/bin/cirrus -L -o cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && chmod a+rx /usr/local/bin/cirrus

WORKDIR /tmp
CMD [ "ls" ]
