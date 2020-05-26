#!/bin/bash
echo "====================="
echo "====== DB Create  ======"
echo "====================="
docker-compose -f docker-compose.test.yml run --rm omnipod bash -c "RAILS_ENV=test bin/rails db:create"

echo "====================="
echo "====== DB Migrate  ======"
echo "====================="

docker-compose -f docker-compose.test.yml run --rm omnipod bash -c "RAILS_ENV=test bin/rails db:migrate"

echo "====================="
echo "====== rake  ======"
echo "====================="
$ docker-compose  -f docker-compose.test.yml run --rm omnipod bash -c "RAILS_ENV=test bin/rake"