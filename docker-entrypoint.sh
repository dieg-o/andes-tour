#!/bin/bash

echo "Running migrations..."
php artisan migrate --force

echo "Caching configuration..."
php artisan config:cache
php artisan route:cache

echo "Starting application..."
php artisan serve --host=0.0.0.0 --port=8080
