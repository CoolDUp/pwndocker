FROM ubuntu:latest
RUN dpkg --add-architecture i386 && \
    apt-get -y update && \
    apt install -y \
    libc6:i386 \
    libc6-dbg:i386 \
    libc6-dbg \
    lib32stdc++6 \
    g++-multilib \
    cmake \
    net-tools \
    libffi-dev \
    libssl-dev \
    python-pip \
    python-capstone \
    ruby2.3 \
    tmux \
    strace \
    ltrace \
    nasm \
    wget \
    radare2 \
    gdb \
    netcat \
    socat --fix-missing && \
    rm -rf /var/lib/apt/list/*

COPY pip.conf /root/.pip/

RUN pip install --upgrade pip

RUN pip install --no-cache-dir \
    ropper \
    unicorn \
    capstone

RUN pip install --no-cache-dir \
    ropgadget \
    pwntools \
    zio \
    angr

RUN mkdir -p /ctf/work

VOLUME ["./work","/ctf/work"]

WORKDIR /ctf/work/

CMD ["/bin/bash"]
