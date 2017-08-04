FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /meu-professor

WORKDIR /meu-professor

ADD Gemfile /meu-professor/Gemfile

ADD Gemfile.lock /meu-professor/Gemfile.lock

RUN bundle install

ADD . /meu-professor

