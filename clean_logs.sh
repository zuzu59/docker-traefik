#!/bin/bash
#Petit script pour nettoyer les logs de traefik
#zf190610.1151

#source: 

echo -e "

Usage: 

sudo ./clean_logs.sh

"
#read -p "Appuyer une touche pour démarrer !"

echo ---------- start

cd /home/ubuntu/docker-traefik

# ne garde que les 1 000 000 dernières lignes des logs !
tail -n 1000000 ./log/traefik.log > ./log/t1.log
mv ./log/t1.log ./log/traefik.log
ls -alrt ./log

docker-compose restart

wc -l ./log/traefik.log

touch ./log_cleaned_ok.txt

echo ---------- stop

