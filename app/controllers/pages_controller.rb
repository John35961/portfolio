class PagesController < ApplicationController
  def home
    @projects = Project.all.sample(6)
    @skills = Skill.all.sample(15).shuffle
    @socials = YAML.safe_load(File.read("#{Rails.root}/config/data/socials.yml"))
  end

  def about; end
end
