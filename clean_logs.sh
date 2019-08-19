#!/bin/bash
#Petit script pour nettoyer les logs de traefik
#zf190819.2223

#source: 

echo -e "

Usage: 

sudo ./clean_logs.sh

"
#read -p "Appuyer une touche pour démarrer !"

echo ---------- start

cd /home/ubuntu/docker-traefik

# ne garde que les 1 000 000 dernières lignes des logs !
#/usr/bin/tail -n 1000000 ./log/traefik.log > ./log/t1.log
/usr/bin/tail -n 500000 ./log/traefik.log > ./log/t1.log

/bin/mv ./log/t1.log ./log/traefik.log
/bin/ls -alrt ./log

/usr/local/bin/docker-compose restart

/usr/bin/wc -l ./log/traefik.log

/usr/bin/touch ./log_cleaned_ok.txt

echo ---------- stop

