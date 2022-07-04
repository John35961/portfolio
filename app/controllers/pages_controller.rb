class PagesController < ApplicationController
  def home
    @projects = Project.all.sample(3)
    @skills = Skill.all.sample(10).shuffle
  end

  def about; end
end
