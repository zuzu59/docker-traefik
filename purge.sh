#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf200125.1447

#source: http://patatos.over-blog.com/2016/09/commet-faire-du-menage-dans-les-conteneurs-et-images-docker.html


echo -e "
Arrête le service et enlève le container ET aussi les datas
"
docker-compose down -v --remove-orphans

echo -e "
Suprime tous les volumes orphelins
"
docker volume ls
docker volume rm $(docker volume ls -qf dangling=true)
docker volume ls

echo -e "
Suprime l'image
"
docker image ls
docker image rm -f traefik:alpine
docker image ls

echo -e "
Vide les logs
"
rm -rf log

echo -e "
Efface les certificats
"
rm -f ./traefik/acme.json
