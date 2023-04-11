FROM ruby:3.2.1-alpine

ENV BUNDLER_VERSION=2.3.8

RUN apk add --update --no-cache \
  binutils-gold \
  build-base \
  curl \
  file \
  g++ \
  gcc \
  git \
  less \
  libstdc++ \
  libffi-dev \
  libc-dev \
  linux-headers \
  libxml2-dev \
  libxslt-dev \
  libgcrypt-dev \
  make \
  netcat-openbsd \
  nodejs \
  openssl \
  pkgconfig \
  postgresql-dev \
  python \
  tzdata \
  yarn
RUN rm -rf /var/cache/apk/*

WORKDIR /myapp

COPY Gemfile Gemfile.lock ./
COPY .ruby-gemset .ruby-version ./

RUN gem update --system && gem install bundler --no-document
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install

COPY package.json yarn.lock ./
RUN yarn install --check-files

COPY . ./

CMD ["bin/rails s -b 0.0.0.0"]
