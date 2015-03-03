#!/usr/bin/env bash

preargs="-i"

while getopts d o
do    case "$o" in
    d)    preargs="-d";;
    [?])  exit 1;;
    esac
done

docker run \
    -p 62:62 \
    -p 179:179 \
    -p 1088:1088 \
    -p 1790:1790 \
    -p 1830:1830 \
    -p 2400:2400 \
    -p 2550:2550 \
    -p 2551:2551 \
    -p 2552:2552 \
    -p 4189:4189 \
    -p 4342:4342 \
    -p 5005:5005 \
    -p 5666:5666 \
    -p 6633:6633 \
    -p 6640:6640 \
    -p 6653:6653 \
    -p 7800:7800 \
    -p 8000:8000 \
    -p 8080:8080 \
    -p 8101:8101 \
    -p 8181:8181 \
    -p 8383:8383 \
    -p 12001:12001 \
    $preargs \
    cloudrouter/odl-fedora
