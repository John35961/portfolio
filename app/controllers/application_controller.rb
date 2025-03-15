class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  before_action :display_maintenance_mode

  def default_url_options
    { host: ENV['WWW'] || 'localhost:3000' }
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def display_maintenance_mode
    redirect_to maintenance_path if subject_to_maintenance_mode? && Setting.instance.maintenance_mode?
  end

  private

  def subject_to_maintenance_mode?
    return false if devise_controller? || admin_signed_in?
    return false if controller_name == "maintenance" && action_name == "show"
    return false if controller_name == "admin" && action_name == "dashboard"
    return false if controller_name == "projects" && action_name.in?(["new", "create", "edit", "update", "destroy"])

    true
  end
end
