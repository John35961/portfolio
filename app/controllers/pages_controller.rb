class PagesController < ApplicationController
  before_action :authenticate_admin!, only: %i[dashboard]

  def home
    @projects = Project.all.sample(6)
    @skills = Skill.all.sample(15).shuffle
  end

  def contact; end

  def dashboard
    @projects = Project.all
  end
end
