class Project < ApplicationRecord
  has_many :project_skills, dependent: :destroy
  has_many :skills, through: :project_skills

  extend FriendlyId

  before_save :nil_if_blank

  friendly_id :name, use: :slugged

  def self.previous(record)
    Project.where('projects.id < ?', record.id).order('created_at ASC').last || Project.last
  end

  def self.next(record)
    Project.where('projects.id > ?', record.id).order('created_at ASC').first  || Project.first
  end

  private

  def nil_if_blank
    attributes.each_key do |attribute|
      self[attribute] = nil if self[attribute].blank?
    end
  end
end
