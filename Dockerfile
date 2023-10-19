# syntax=docker/dockerfile:1
FROM ruby:2.7.0
ENV BUNDLE_PATH /gems
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install bundler -v 2.3.26
WORKDIR /myapp
COPY . /myapp/
#COPY Gemfile /myapp/Gemfile
#COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
#ENV BUNDLE_PATH /gems
# Add a script to be executed every time the container starts.
#COPY entrypoint.sh /usr/bin/
#RUN chmod +x /usr/bin/entrypoint.sh
#ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
ENTRYPOINT ["bin/rails"]
CMD ["s", "-b", "0.0.0.0"]

