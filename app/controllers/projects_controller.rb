class ProjectsController < ApplicationController
  def show
    set_project
  end

  def index
    @projects = Project.all
  end

  private

  def set_project
    @project = Project.friendly.find(params[:id])
  end
end
