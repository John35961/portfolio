# frozen_string_literal: true

if Rails.env.production?
  Sentry.init do |config|
    config.breadcrumbs_logger = [:active_support_logger, :http_logger]
    config.dsn = ENV['SENTRY_DSN']
    config.enable_tracing = true
    config.send_default_pii = true
  end
end
