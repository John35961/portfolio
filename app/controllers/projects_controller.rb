class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]
  before_action :record_page_view, only: %i[index show]
  skip_before_action :authenticate_admin!, only: %i[index show]
  layout 'admin', only: %i[new update create edit]

  def show; end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @project.update(project_params)
    if @project.save
      redirect_to dashboard_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
    @projects = Project.includes(:skills, :banner_attachment, :banner_blob).order('RANDOM()')
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
    params.require(:project).permit(:name, :project_url, :github_url, :banner,
                                    :banner_remote_url, :youtube_url, :release_date, :short_description,
                                    :long_description, :banner_alt_text,
                                    :is_active, :slug, skill_ids: [], gallery: [])
  end

  def record_page_view
    ActiveAnalytics.record_request(request)
  end
end
