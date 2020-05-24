# All the command during project


## 1. This is run to generate api application

docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app \rails rails new --skip-bundle --api --database postgresql omnipod

## 2.  Go to directory omnipod

cd omnipod

## 3. since we do not have Gemfile.lock, we will execute the following commands
## This time we run a container from the ruby:2.3 image, again mounting the current folder into the container and then ## running bundle install as the main command.And that’s it. Now we have our Gemfile and Gemfile.lock and the ## application is ready to be dockerized
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.6 bundle install

## 4. You will need some of this files


## 5. You can now build omnipod
docker-compose build

## 6. compose up
docker-compose up

## 7.
docker-compose run --rm omnipod bin/rails g scaffold comments comment:text profile_id:integer commentable_type:string commentable_id:integer 