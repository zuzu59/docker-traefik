#!/bin/bash
#Petit script pour nettoyer les logs de traefik
#zf190828.1100

#source: 

echo -e "

Usage: 

./clean_logs.sh

"
#read -p "Appuyer une touche pour démarrer !"

echo ---------- start

logs_path="/home/ubuntu/docker-traefik/log"

# ne garde que les 1 000 000 dernières lignes des logs !
#/usr/bin/tail -n 500000 $logs_path/traefik.log > $logs_path/t1.log
/usr/bin/tail -n 1000000 $logs_path/traefik.log > $logs_path/t1.log


/bin/mv $logs_path/t1.log $logs_path/traefik.log
/bin/ls -alrt $logs_path

cd /home/ubuntu/docker-traefik
/usr/local/bin/docker-compose restart
/usr/bin/touch ./log_cleaned_ok.txt

/usr/bin/wc -l $logs_path/traefik.log

echo ---------- stop

