class MaintenanceController < ApplicationController
  skip_before_action :authenticate_admin!

  layout false

  def show
    redirect_to root_path unless Setting.instance.maintenance_mode?
  end

  def toggle_maintenance_mode
    Setting.instance.toggle!(:maintenance_mode)

    respond_to do |format|
      format.js
    end
  end
end
