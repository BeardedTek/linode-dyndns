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

```
linode-dyndns  | Linode Dynamic IP Address Updater
linode-dyndns  | by BeardedTek
linode-dyndns  | https://github.com/beardedtek/linode-dyndns
linode-dyndns  |  [INFO ]  Attempting to update example.com
linode-dyndns  |  [INFO ]  --------------------------------------------
linode-dyndns  |  [INFO ]  Current A Record  : 12.345.678.90
linode-dyndns  |  [INFO ]  Current Public IP : 12.345.678.91
linode-dyndns  |  [INFO ]  Out of date: Updating Domain Record
linode-dyndns  | ┌──────────┬──────┬──────┬─────────────────┬─────────┬──────────┬────────┐
linode-dyndns  | │ id       │ type │ name │ target          │ ttl_sec │ priority │ weight │
linode-dyndns  | ├──────────┼──────┼──────┼─────────────────┼─────────┼──────────┼────────┤
linode-dyndns  | │ 12345678 │ A    │      │ 12.345.678.91   │ 30      │ 0        │ 0      │
linode-dyndns  | └──────────┴──────┴──────┴─────────────────┴─────────┴──────────┴────────┘
linode-dyndns  |  [INFO ]  Attempting to update example.com
linode-dyndns  |  [INFO ]  --------------------------------------------
linode-dyndns  |  [INFO ]  Current A Record  : 12.345.678.91
linode-dyndns  |  [INFO ]  Current Public IP : 12.345.678.91
linode-dyndns  |  [INFO ]  Up to date: No action taken.
linode-dyndns  |  [INFO ]  Waiting 30m to check again
```
