FROM ruby:2.3
MAINTAINER DShmelev <avikez@gmail.com>

# Set the locale
ENV LANG C.UTF-8

# Download and install system libs
RUN \
  apt-get update && \
  apt-get install -y libmagic-dev && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir /root/.chef
ADD knife.rb /root/.chef/knife.rb
