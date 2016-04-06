#! /bin/bash 
###########################################
# Build Base Image for songni
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
SOURCECODE=$baseDir/../..
NODE_VERSION=v4.2.1

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir

eval "$(docker-machine env docker-default)"

docker build --build-arg NODE_VERSION=$NODE_VERSION \
    --force-rm=true -t arrking/node:v4.2.1 .
