#!/usr/bin/env bash
SH=`cd $(dirname $BASH_SOURCE) && pwd`  # SH aka SCRIPT_HOME
AH=`cd $SH/../.. && pwd`  # AH aka APP_HOME

source "$SH/.config.sh"
    cd $AH
        # created `build` folder with `yarn build` command
        #yarn install ; yarn build

        cp -f "$SH/.dockerignore" "$AH/.dockerignore"  # create .dockerignore of this deploy-distro
            docker build   --file "$SH/Dockerfile"   -t $IMAGE_NAME      $AH
            #              Docker file path          docker image name   source_folder
    cd - 1>/dev/null
