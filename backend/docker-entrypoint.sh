#!/bin/sh
set -e

echo "Waiting for database to be ready..."
while ! nc -z db 5432; do
  echo "Database is unavailable - sleeping"
  sleep 1
done

echo "Database is ready!"

echo "Starting application..."
exec npm start
