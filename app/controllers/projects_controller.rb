class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit]
  skip_before_action :authenticate_admin!, only: %i[index show]

  def show; end

  def edit; end

  def index
    @projects = Project.all
  end

  private

  def set_project
    @project = Project.friendly.find(params[:id])
  end
end
