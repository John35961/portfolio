class PagesController < ApplicationController
  before_action :authenticate_admin!, only: %i[dashboard]
  before_action :record_page_view

  def home
    @projects = Project.all.sample(4)
    @skills = Skill.all.sample(15).shuffle
  end

  def contact
    @contact = Contact.new
  end

  private

  def record_page_view
    ActiveAnalytics.record_request(request)
  end
end
