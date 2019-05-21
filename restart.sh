#!/bin/bash
#Petit script pour redémarrer tout le binz
#zf190521.1039

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

#source: https://docs.traefik.io/

docker-compose down
sleep 2
./start.sh

