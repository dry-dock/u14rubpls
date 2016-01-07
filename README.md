u14rubpls
================

Shippable CI image for Ruby on Ubuntu 14.04 with commonly used services. Available versions are:

1. 1.8.7
2. 1.9.3
3. 2.0.0
4. 2.1.5
5. 2.2.1

## How to use
You can use this image to run ruby builds on Shippable. Just update your
`shippable.yml` file and add the `build_image` directive. You should also
activate the appropriate rvm so your build runs against the
correct version of ruby. You can use `$SHIPPABLE_RUBY` environment variable to specify ruby versions. Here's a sample YML file to get you going:

````

language: ruby
build_image: drydock/u14rubpls:prod

rvm:
  - 1.8.7
  - 1.9.3
  - 2.0.0
  - 2.1.5
  - 2.2.1

services:
  - elasticsearch
  - memcached
  - mongodb
  - mysql
  - postgres
  - rabbitmq
  - redis
  - selenium
  - sqllite

before_install:
 - source ~/.rvm/scripts/rvm
 - rvm install $SHIPPABLE_RUBY --verify-downloads 1
 - source ~/.bashrc && ~/.rvm/scripts/rvm && rvm use $SHIPPABLE_RUBY
 
install:
 - bundle install --gemfile="Gemfile"
 - ruby -v

script:
- bundle exec rake

````
