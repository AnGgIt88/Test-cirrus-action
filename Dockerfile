FROM anggit86/ubuntu:22.04

RUN curl --create-dirs -L -o /usr/local/bin/cirrus -L -o cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && chmod a+rx /usr/local/bin/cirrus \
    && apt-get -y install bash tart

RUN git clone --depth 1 https://github.com/AnGgIt88/Test-cirrus-action /home/nfs-project \
    && chmod 777 /home/nfs-project

WORKDIR /home/nfs-project
CMD [ "start" ]
