FROM docker.io/library/ruby:3.2.2

RUN apt-get update -qq && apt-get install -y postgresql-client

WORKDIR /myapp

COPY . /myapp

RUN bundle install

RUN bundle exec rake db:migrate

RUN bundle exec rake assets:precompile

CMD ["rails", "server", "-b", "0.0.0.0","-p","8080"]
