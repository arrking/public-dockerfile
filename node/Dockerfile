FROM ubuntu:14.04
MAINTAINER Hain Wang <hailiang.hl.wang@gmail.com>

ARG NODE_VERSION

ADD sources.list.trusty /etc/apt/sources.list

## Install common tools
RUN \
    sudo apt-get update && \
    sudo apt-get install wget zsh wget curl git ack-grep -yy

## Install build essentials
RUN \
    sudo apt-get install build-essential python openssl libssl-dev pkg-config -yy

## Get NodeJS Sourcecodes
RUN \
    sudo mkdir ~/git && \
    cd ~/git && \
    sudo git clone https://git.oschina.net/ubiware/node.git

## Build nodejs
RUN \
    cd ~/git/node && \
    sudo git checkout ${NODE_VERSION} && \
    sudo ./configure && \
    sudo make && \
    sudo make install

## Check build results
RUN node -v
RUN npm -v

## Remove file to reduce size
RUN rm -rf ~/git/node
RUN sudo apt-get clean
RUN sudo apt-get autoremove
ENV NODE_VERSION=${NODE_VERSION}
