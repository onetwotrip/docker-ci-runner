FROM sideci/ubuntu14.04-ruby-rubocop

MAINTAINER DShmelev <avikez@gmail.com>

RUN \
 apt-get update && \
 apt-get install -y libmagic-dev && \
 rm -rf /var/lib/apt/lists/*
