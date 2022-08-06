class AdminController < ApplicationController
  def dashboard
    @projects = if params[:per_page].present?
                  Project.order('updated_at DESC').page(params[:page]).per(params[:per_page])
                else
                  Project.order('updated_at DESC').page(params[:page])
                end
  end
end
