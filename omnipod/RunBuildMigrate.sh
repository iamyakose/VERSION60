 docker-compose run --user "$(id -u):$(id -g)" omnipod rake db:reset
docker-compose run --user "$(id -u):$(id -g)" omnipod rake db:migrate
docker-compose run --user "$(id -u):$(id -g)" omnipod rake db:seed
