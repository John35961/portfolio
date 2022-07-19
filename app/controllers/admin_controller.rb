class AdminController < ApplicationController
  def dashboard
    @projects = Project.all
  end
end
