# Semàntic Podcast


## Development setup

    bundle
    cp config/database{.example,}.yml
    bundle exec rake db:create db:schema:load db:seed
    bundle exec rails s


## Run tests

    bundle exec rake

or, to have continuous testing, do

    bundle exec guard

