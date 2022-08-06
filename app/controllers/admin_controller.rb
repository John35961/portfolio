class AdminController < ApplicationController
  def dashboard
    @projects = Project.order('updated_at DESC').page params[:page]
  end
end
