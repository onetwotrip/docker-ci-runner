FROM ruby:2.3

MAINTAINER DShmelev <avikez@gmail.com>

# Download and install system libs
RUN \
  apt-get update && \
  apt-get install -y libmagic-dev && \
  rm -rf /var/lib/apt/lists/*

RUN gem install chef -v '12.6.0'
RUN knife configure -s https://oven.twiket.com/organizations/ott -u docker-ci-runner -r '' --defaults
