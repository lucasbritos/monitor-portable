#!/bin/bash
yes y |ssh-keygen -q -t rsa -N '' -f ./ansible/docker/keys/id_rsa >/dev/null 
