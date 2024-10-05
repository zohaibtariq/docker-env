# For local environment
```bash
export ENVIRONMENT=local
docker compose down
docker compose up -d --build
#docker compose build --no-cache
#docker compose up -d
```

# For staging environment
```bash
export ENVIRONMENT=staging
docker compose down
docker compose up -d --build
```

# For production environment
```bash
export ENVIRONMENT=prod
docker compose down
docker compose up -d --build
```

```bash
docker exec -it laravel chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache
docker exec -it laravel chmod -R 775 /var/www/storage /var/www/bootstrap/cache
```

# Set the correct permissions for the storage and bootstrap/cache directories
```bash
docker exec -it laravel chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache
docker exec -it laravel chmod -R 775 /var/www/storage /var/www/bootstrap/cache
```

```bash
docker exec -it laravel php artisan key:generate
```

```bash
docker exec -it laravel php artisan migrate
```

```bash
docker exec -it laravel php artisan db:seed
```

```bash
docker exec -it laravel php artisan cache:clear
docker exec -it laravel php artisan config:clear
docker exec -it laravel php artisan route:clear
docker exec -it laravel php artisan view:clear
docker exec -it laravel php artisan storage:link
docker exec -it laravel php artisan optimize:clear
docker exec -it laravel php artisan config:cache
docker exec -it laravel php artisan queue:restart
```

[//]: # (```bash)

[//]: # (docker exec -it laravel php artisan passport:install)

[//]: # (```)

[//]: # ()
[//]: # (```bash)

[//]: # (docker exec -it laravel php artisan passport:client --personal)

[//]: # (```)

[//]: # ()
[//]: # (```bash)

[//]: # (docker exec -it laravel php artisan passport:client --password)

[//]: # (```)

[//]: # ()
[//]: # (```bash)

[//]: # (docker exec -it laravel php artisan passport:client --client)

[//]: # (```)

[//]: # ()
[//]: # (```bash)

[//]: # (docker exec -it laravel php artisan passport:client --public)

[//]: # (```)

[//]: # ()
[//]: # (```bash)

[//]: # (docker exec -it laravel php artisan passport:client --password)

[//]: # (```)

# Redis Commands

need to update `redis/redis.conf` `requirepass` manually for each environment

```bash
docker exec -it redis redis-cli CONFIG GET *
```

```bash
docker exec -it redis redis-cli CONFIG SET <parameter> <value>
```

```bash
docker exec -it redis redis-cli CONFIG SET maxmemory 256mb
```

```bash
docker exec -it redis redis-cli INFO
```

```bash
docker exec -it redis redis-cli CONFIG SET requirepass "yourpassword"
```

```bash
docker exec -it redis redis-cli MONITOR
```

```bash
docker exec -it redis redis-cli PING
```

```bash
docker exec -it redis redis-cli KEYS *
```
