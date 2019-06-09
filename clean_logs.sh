#!/bin/bash
#Petit script pour nettoyer les logs de traefik
#zf190609.1620

#source: 

echo -e "

Usage: 

sudo ./clean_logs.sh

"
#read -p "Appuyer une touche pour démarrer !"

echo ---------- start


# ne garde que les 1 000 000 dernières lignes des logs !

tail -n 1000000 log/traefik.log > log/t1.log
mv log/t1.log log/traefik.log
ls -alrt log

docker-compose restart

wc -l ./log/traefik.log

