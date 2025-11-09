class PagesController < ApplicationController
  before_action :authenticate_admin!, only: %i[dashboard]
  before_action :set_contact, only: %i[home contact]
  before_action :record_page_view

  def home
    @projects = Project.includes(:skills, :banner_attachment, :banner_blob).order('RANDOM()').limit(4)
    @skills = Skill.order('RANDOM()').limit(15)
  end

  def contact; end

  def legal; end

  def discogs_wantlist_helper_privacy_policy; end

  private

  def set_contact
    @contact = Contact.new
  end

  def record_page_view
    ActiveAnalytics.record_request(request)
  end
end
