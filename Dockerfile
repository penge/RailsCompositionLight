FROM ruby:2.4.1


# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential nodejs


# Configure base directory
RUN mkdir -p /myapp
WORKDIR      /myapp


# Copy Gemfile
ADD Gemfile      /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock


# Install gems
RUN bundle install


# Copy other files
ADD . /myapp
