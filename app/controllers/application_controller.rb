class ApplicationController < ActionController::Base
  def default_url_options
    { host: ENV['WWW'] || 'localhost:3000' }
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  before_action :authenticate_admin!
end
