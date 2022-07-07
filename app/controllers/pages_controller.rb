class PagesController < ApplicationController
  def home
    @projects = Project.all.sample(6)
    @skills = Skill.all.sample(15).shuffle
  end

  def about; end
end
