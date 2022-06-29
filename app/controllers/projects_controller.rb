class ProjectsController < ApplicationController
  def show; end

  def index
    @projects = Project.all
  end
end
