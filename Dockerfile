FROM anggit86/ubuntu:22.04

RUN wget https://raw.githubusercontent.com/AnGgIt88/Test-cirrus-action/gcc-master/start \
    && chmod +x start

RUN curl --create-dirs -L -o /usr/local/bin/cirrus -L -o cirrus https://github.com/cirruslabs/cirrus-cli/releases/latest/download/cirrus-linux-amd64 \
    && chmod a+rx /usr/local/bin/cirrus

WORKDIR /tmp
CMD [ "cirrus", "worker", "run", "--token", "1dh5t1s5ifsfgkkh9a2ssiv8lhh7re11urunica7q0r81608ib2c5vq42sp890uo2b137himp1oqj3c2it4ki8seivnn4gp9gkudfp1", "--name", "ZenBook-UX5401" ]
