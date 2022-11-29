FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C
ENV ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx120G"
ENV JAVA_OPTS=" -Xmx120G "
ENV BUILD_USERNAME=cirrus
ENV BUILD_HOSTNAME=nfsproject
ENV USER=cirrus
ENV HOSTNAME=nfs-project
WORKDIR /tmp

RUN apt-get -yqq update \
    && curl -L -o cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && mv cirrus /usr/local/bin/cirrus
    && chmod +x /usr/local/bin/cirrus

COPY . .

WORKDIR /tmp
VOLUME ["/tmp/rom", "/tmp/ccache"]
CMD [ "bash", "start" ]
