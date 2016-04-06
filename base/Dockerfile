FROM arrking/node:v4.2.1
MAINTAINER Hain Wang <hailiang.hl.wang@gmail.com>

ARG CIT_ID

## Install libs for canvas
RUN sudo apt-get install libcairo2-dev \
    libjpeg8-dev libpango1.0-dev libgif-dev \
    build-essential g++ -yy

## Install Microsoft YaHei
RUN sudo mkdir -p /usr/share/fonts/winfonts
RUN sudo chmod 777 /usr/share/fonts/winfonts
COPY ./winfonts/* /usr/share/fonts/winfonts/
RUN sudo apt-get install ttf-mscorefonts-installer  fontconfig -yy && \
    sudo mkfontscale && \
    sudo mkfontdir && \
    sudo fc-cache -f -v

## Install Ruby
RUN sudo apt-get install ruby-full -yy && \
    sudo gem install sass

## Install grunt and bower
RUN npm install -d grunt-cli bower -g

## Install cnpm
# RUN npm install -g -d cnpm --registry=https://registry.npm.taobao.org

## Add repo commit id into env
ENV CIT_ID=${CIT_ID}

RUN echo $CIT_ID
