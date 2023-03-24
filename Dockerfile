# run with ruby 3.2.
FROM ruby:3.2.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Install postresql
RUN apt-get install -y postgresql-client
# work directory
WORKDIR /app
# Copy Gemfile and Gemfile.lock
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
# Install gems
RUN bundle install
# Copy the main application.
COPY . /app
