FROM ruby:2.7.1

ENV APP_NAME ebase

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs nano
RUN apt-get install -y postgresql-client tzdata


# https://yarnpkg.com/lang/en/docs/install/#debian-stable
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update -qq && apt-get install -y nodejs postgresql-client vim && \
  apt-get install -y yarn && \
  apt-get install -y imagemagick && \
  apt-get install -y libvips-tools && \
  apt-get install -y locales



RUN mkdir /ebase
WORKDIR /ebase

ADD Gemfile /ebase/Gemfile
ADD Gemfile.lock /ebase/Gemfile.lock
ADD . /ebase

RUN gem update --system

EXPOSE 3000
