# syntax = docker/dockerfile:1

ARG RUBY_VERSION=3.2.3
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

WORKDIR /app

RUN apt-get update -qq && apt-get install --no-install-recommends -y \
  curl \
  wget \
  libjemalloc2 \
  libvips \
  postgresql-client \
  build-essential \
  libpq-dev \
  nodejs \
  yarn && \
  rm -rf /var/lib/apt/lists/ /var/cache/apt/archives

ENV RAILS_ENV="production" \
  BUNDLE_DEPLOYMENT="1" \
  BUNDLE_PATH="/usr/local/bundle" \
  BUNDLE_WITHOUT="development" \
  RAILS_SERVE_STATIC_FILES="1"

FROM base AS build

RUN apt-get update -qq && \
  apt-get install --no-install-recommends -y build-essential git libpq-dev pkg-config && \
  rm -rf /var/lib/apt/lists /var/cache/apt/archives

COPY Gemfile Gemfile.lock ./
RUN bundle install && \
  rm -rf ~/.bundle/ "${BUNDLE_PATH}"/ruby/*/cache "${BUNDLE_PATH}"/ruby/*/bundler/gems/*/.git && \
  rm -rf tmp/cache && \
  bundle exec bootsnap precompile --gemfile

COPY . .

RUN bundle exec bootsnap precompile app/ lib/
RUN RAILS_ENV=production SECRET_KEY_BASE=dummy ./bin/rails assets:precompile

FROM base
COPY --from=build "${BUNDLE_PATH}" "${BUNDLE_PATH}"
COPY --from=build /rails /rails

RUN groupadd --system --gid 1000 rails && \
  useradd rails --uid 1000 --gid 1000 --create-home --shell /bin/bash && \
  chown -R rails:rails db log storage tmp
USER 1000:1000

EXPOSE 3000
CMD ["bash", "-c", "bin/rails db:prepare && bin/rails server -b '0.0.0.0'"]
