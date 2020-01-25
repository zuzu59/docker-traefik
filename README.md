# docker-traefik
Petit reverse-proxy Traefik dans un Docker pour gérer des services Dockerisés


## Authentification basic

ATTENTION, il faut mettre le fichier *.htpasswd* dans le dossier **./traefik**


### Génération du fichier .htpasswd

On peut le générer très facilement avec:
```
cd ./traefik
sudo apt update
sudo apt install -y apache2-utils
htpasswd -n -B admin
le_password_que_l_on_veut
```


## Logorate pour les logs de Traefik

Afin que le logorate tourne chaque heure, il faut ajouter ceci:

```
0 * * * * /home/ubuntu/docker-traefik/clean_logs.sh
```

dans le crontab avec:

```
crontab -e
```




## Sources:
https://blog.wecoprod.com/traefik-docker/



zf200125.1438
