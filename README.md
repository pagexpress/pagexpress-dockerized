# Pagexpress docker integration

Two examples of docker configuration for pagexpress server and client apps, one for production second for development.

## Setup steps for development
1. Create `config/custom-environent-variables.json` and `config/default.json` files based on their templates.
2. Run docker containers
```shell
docker-compose --file docker-compose-dev.yml up --build
```
3. Inject initial DB state
```shell
./setup-db.sh
```

That's it, open http://127.0.0.1 and use admin user credentials: email:admin@admin.com, pass:adminadmin

## For production
All steps like for development with some modification:
- Modify environment/env-prod and create symbolic link `ln -s environment/env-prod .env`
