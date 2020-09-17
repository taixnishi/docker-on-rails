FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /docker-on-rails
COPY Gemfile Gemfile.lock /docker-on-rails/
RUN bundle install