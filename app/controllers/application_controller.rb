class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  before_action :display_maintenance_mode

  def default_url_options
    { host: ENV['WWW'] || 'localhost:3000' }
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  private

  def display_maintenance_mode
    return if current_admin

    render template: 'maintenance/show', layout: false if Setting.instance.maintenance_mode?
  end
end
