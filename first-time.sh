#!/bin/bash

mkdir -p ansible/docker/keys/
mkdir -p ansible/crontab/


## GENERATE KEYS FOR ANSIBLE

yes y |ssh-keygen -q -t rsa -N '' -f ./ansible/docker/keys/id_rsa >/dev/null 

## GENERATE EMPTY CRONTAB FILE


touch ansible/crontab/crontab
