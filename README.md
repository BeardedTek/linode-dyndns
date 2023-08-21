# linode-dyndns
Dynamically Updates Linode Domain A Record

by Beardedtek

https://github.com/beardedtek/linode-dyndns


## SETUP

### docker-compose.yml
```
version: '3'
services:

  linode-dyndns:
    image: beardedtek/linode-dyndns:latest
    container_name: linode-dyndns
    restart: always
    volumes:
      - ./.config:/root/.config #STORES LINODE Personal Access Key
    environment:
      - DOMAIN_ID=${DOMAIN_ID}
      - RECORD_ID=${RECORD_ID}
      - INTERVAL=${INTERVAL}
```

### Edit .env FILE WITH THE FOLLOWING ENVIRONMENT VARIALBES
    - DOMAIN_ID=${DOMAIN_ID}
    - RECORD_ID=${RECORD_ID}
    - INTERVAL=${INTERVAL}

### Bring It UP
    `docker-compose up -d`

## Configure linode-cli
### Using built-in utility to walk you through:
    `docker-compose exec linode-dyndns linode-cli config`

## View Logs
    `docker-compose logs -f`
