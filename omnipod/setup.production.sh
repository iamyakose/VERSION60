#!/bin/sh

echo "Waiting for PostgreSQL to start on port: 5432..."

while ! nc -z postgres 5432; do
  sleep 0.1
done

echo "PostgreSQL have started.."

bin/rails db:migrate RAILS_ENV=production

