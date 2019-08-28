# docker-traefik
Petit reverse-proxy Traefik dans un Docker pour gérer des services Dockerisés



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



zf190828.1102

