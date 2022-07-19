class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]
  skip_before_action :authenticate_admin!, only: %i[index show]
  layout 'admin', only: %i[new edit]

  def show; end

  def new
    @project = Project.new
  end

  def create; end

  def edit; end

  def update
    @project.update(project_params)
    redirect_to dashboard_path
  end

  def index
    @projects = Project.all
  end

  def destroy
    @project.destroy
    redirect_to dashboard_path
  end

  private

  def set_project
    @project = Project.friendly.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :project_url, :github_url,
                                    :banner_url, :release_date, :short_description,
                                    :long_description, :banner_url_alt_text,
                                    :is_active, :slug)
  end
end
