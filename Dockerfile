FROM ruby:2.6.6
RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
Run bundle install --without production
    RUN bundle exec rake db:migrate
    RUN bundle exec rake db:seed
COPY . /app