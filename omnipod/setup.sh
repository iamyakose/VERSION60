#!/bin/sh

echo "Waiting PostgreSQL to start on 5432..."

while ! nc -z postgres 5432; do
  sleep 0.1
done
 
echo "PostgreSQL Server now started"

bin/rails db:migrate RAILS_ENV=development


