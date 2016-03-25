FROM ruby:2.3

MAINTAINER DShmelev <avikez@gmail.com>

# Download and install system libs
RUN \
  apt-get update && \
  apt-get install -y libmagic-dev && \
  rm -rf /var/lib/apt/lists/*

# Download Chef client
RUN \
  wget https://packages.chef.io/stable/ubuntu/10.04/chef_12.6.0-1_amd64.deb && \
  dpkg -i chef_12.6.0-1_amd64.deb

# Download and install gem libs
RUN gem install bundler \
  nokogiri rubocop rubocop-rspec \
  rspec capybara rake \
  ruby-filemagic rest-client capybara-mechanize \
  pry parallel_tests
RUN gem install chef -v '12.6.0'
