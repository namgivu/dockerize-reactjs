#!/usr/bin/env bash
SH=`cd $(dirname $BASH_SOURCE) && pwd`  # SH aka SCRIPT_HOME
AH=`cd $SH/../.. && pwd`  # AH aka APP_HOME

source "$SH/.config.sh"
    docker stop -t1 $CONTAINER; docker rm -f $CONTAINER

    cd $AH
        docker run   -p $PORT:80     --name  $CONTAINER     -d                  -it              $IMAGE_NAME
        #            port mapping    container name as kc   run as daemon       CRITICAL NOTE:
        #                                                   run as background   must have this -it param #TODO remove this
    cd - 1>/dev/null
