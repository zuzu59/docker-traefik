# docker-traefik
Petit reverse-proxy Traefik dans un Docker pour gérer des services Dockerisés



## Logorate pour les logs de Traefik

il faut ajouter ceci:

```
5 0 * * * root /home/ubuntu/docker-traefik/clean_logs.sh
```
dans le crontab avec:

```
crontab -e
```




## Sources:
https://blog.wecoprod.com/traefik-docker/



zf190609.1613

