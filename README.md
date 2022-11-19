# LinodeDynamicDns
 
Dynamically Updates Linode Domain A Record

## SETUP
### NEED TO HAVE A .env FILE WITH THE FOLLOWING ENVIRONMENT VARIALBES
    - DOMAIN_ID=${DOMAIN_ID}
    - RECORD_ID=${RECORD_ID}
    - INTERVAL=${INTERVAL}

### Bring It UP
    ```docker-compose up -d```

## Configure linode-cli
### Using built-in utility to walk you through:
    ```docker-compose exec linode-dyndns linode-cli config```
    ```docker-compose restart```
### Manually:
    edit `config/linode-cli` to contain your information
    move `config` to `.config`

## View Logs
    ```docker-compose logs -f```