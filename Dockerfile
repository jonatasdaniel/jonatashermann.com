FROM ruby:2.3.0
RUN apt-get update -qq
RUN apt-get install -y build-essential libpq-dev nodejs npm nodejs-legacy
RUN apt-get install -y \
    wget \
    imagemagick

RUN apt-get install -y --no-install-recommends \
      ca-certificates \
      bzip2 \
      libfontconfig

RUN rm -rf /var/lib/apt/lists/*

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock

RUN bundle install
