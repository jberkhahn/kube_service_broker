FROM ruby:latest
RUN mkdir /usr/src/app
ADD . /usr/src/app/
WORKDIR /usr/src/app/
RUN gem install bundler
RUN bundle install
EXPOSE 4567
CMD ["ruby", "/usr/src/app/service_broker.rb", "/usr/src/app/cats.json"]
