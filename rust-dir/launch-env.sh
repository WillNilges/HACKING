#!/bin/bash

WORK_DIR=$(pwd)
CONTAINER_NAME='hacking-rust'
IMAGE_NAME='hacking-rust'

while getopts ":hn:w:" option; do
    case $option in
        n) # choose which container to use
            CONTAINER_NAME=$OPTARG;;
        w) # choose work dir
            WORK_DIR=$OPTARG;;
        h)
            help
            exit;;
    esac
done


podman run --rm -it -v $WORK_DIR:/workdir --name=$CONTAINER_NAME --hooks-dir=/usr/share/containers/oci/hooks.d/ --security-opt=label=disable $IMAGE_NAME
