# Readit

Readit is a Reddit clone made with Ruby on Rails and Bootstrap.  The testing is done in Rspec. 

## Getting Started

These instructions will get you a copy of the project up and run on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Getting Started

# First Run
docker-compose build
docker-compose run --rm api rails db:create
docker-compose run --rm api rails db:migrate
docker-compose run --rm api rails db:seed
docker-compose up

# If you have already run the app
docker-compose up

### Prerequisites

Docker :)


### Installing

If you have Docker installed it's really as easy as the steps above.
https://docs.docker.com/docker-for-mac/install/


Add additional notes about how to deploy this on a live system

## Built With

* [Ruby on Rails](http://rubyonrails.org/) - The web framework used
* [Bootstrap](https://github.com/twbs/bootstrap-rubygem) - To make it look nice :)
* [Rspec](http://rspec.info/) - for tests 

## Author
 **Blake Pfaff** 
