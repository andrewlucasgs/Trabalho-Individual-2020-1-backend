FROM ruby:2.5.7

RUN apt-get update -qq 
RUN apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /api

WORKDIR /api

COPY Gemfile Gemfile.lock /api/

RUN gem install bundler

RUN bundle install

COPY . /api