FROM monsantoco/min-jessie:latest

RUN apt-get update && apt-get install -y \
    bundler \
    zlib1g-dev

COPY Gemfile /tmp
COPY Gemfile.lock /tmp

RUN bundle install --gemfile /tmp/Gemfile

WORKDIR /pycan_web
CMD bundle exec jekyll serve -H 0.0.0.0
