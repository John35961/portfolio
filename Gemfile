source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.3"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use Postgres as the database for Active Record
gem "pg"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use TailwindCSS framework with Rails [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails"

# Font-Awesome font bundled as an asset for the rails asset pipeline [https://github.com/bokmann/font-awesome-rails]
gem "font-awesome-rails"

# Slugging and permalink plugins for ActiveRecord, allows to generate human-friendly URLs [https://github.com/norman/friendly_id]
gem "friendly_id", "~> 5.4.0"

# Flexible authentication solution for Rails with Warden [https://github.com/heartcombo/devise]
gem "devise"

# Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup [https://github.com/heartcombo/simple_form]
gem "simple_form"

# Cloudinary GEM for Ruby on Rails integration [https://github.com/cloudinary/cloudinary_gem]
gem "cloudinary"

# Measure image size using pure Ruby [https://github.com/toy/image_size]
gem "image_size", "~> 3.0"

# Wrapper for Net::HTTP [https://github.com/ruby/open-uri]
gem "open-uri"

# Use lazy lookup with custom i18n scopes [https://github.com/abitdodgy/i18n_lazy_scope]
gem "i18n_lazy_scope"

# First-party, privacy-focused traffic analytics for Rails [https://github.com/BaseSecrete/active_analytics]
gem "active_analytics"

# Scope & Engine-based, clean and powerful paginator for Ruby apps [https://github.com/kaminari/kaminari]
gem "kaminari"

# Send e-mail straight from forms in Rails [https://github.com/heartcombo/mail_form]
gem "mail_form"

# CSS inliner for email templates [https://github.com/fphilipe/premailer-rails]
gem "premailer-rails"

# Do some browser detection with Ruby [https://github.com/fnando/browser]
gem "browser"

# Framework-agnostic XML Sitemap generator with automatic Rails integration [https://github.com/kjvarga/sitemap_generator]
gem "sitemap_generator"

# Module for the 'fog' gem to support Amazon Web Services [https://github.com/fog/fog]
gem "fog-aws"

# New Relic RPM Ruby Agent [https://github.com/newrelic/newrelic-ruby-agent]
gem "newrelic_rpm"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Use Sass to process CSS
# gem "sassc-rails"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "dotenv-rails"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "rails-erd"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
