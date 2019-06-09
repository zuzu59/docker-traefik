#!/bin/bash
#Petit script pour nettoyer les logs de traefik
#zf190609.1559

#source: 

echo -e "

Usage: 

sudo ./clean_logs.sh

"
read -p "Appuyer une touche pour démarrer !"

echo ---------- start



tail -n 1000000 log/traefik.log > log/t1.log
mv log/t1.log log/traefik.log
ls -alrt log

