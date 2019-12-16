FROM ruby:2.6.3
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get update -qq
RUN apt-get install -qq -y nodejs
RUN mkdir -p /var/www/image-upload
WORKDIR /var/www/image-upload
ENV RAILS_ENV=production \
    RAKE_ENV=production
COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.0.1
ENV BUNDLER_VERSION=2.0.1
RUN bundle install --jobs 20 --retry 5 --without development test
COPY . ./
EXPOSE 3001
RUN bundle exec rails db:create db:migrate
