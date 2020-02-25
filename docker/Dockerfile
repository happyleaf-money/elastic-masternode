FROM ubuntu:18.04
MAINTAINER Happy Leaf developer's Team <developers@happyleaf.money>

RUN apt-get update --yes && apt-get install --yes \
        build-essential libtool autotools-dev autoconf pkg-config libssl1.0-dev libboost-all-dev libevent-dev wget \
        software-properties-common && \
    add-apt-repository --yes ppa:bitcoin/bitcoin && \
        apt-get update

RUN apt-get install --yes libdb4.8-dev libdb4.8++-dev \
            libminiupnpc-dev libzmq3-dev && \
    apt-get clean && \
    rm -rf /var/lib/ap/lists/*

WORKDIR /usr/local/bin

COPY mn_entry.sh /usr/local/bin

RUN chmod 744 mn_entry.sh

ENV masternodeprivkey=xxxxxxxxxxxxxxxxxx
ENV ip=0.0.0.0
ENV coin=happyleaf

ENTRYPOINT ./mn_entry.sh ${coin} ${masternodeprivkey} ${ip}




















