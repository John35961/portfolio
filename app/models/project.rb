class Project < ApplicationRecord
  has_many :project_skills
  has_many :skills, through: :project_skills

  def self.previous(record)
    Project.where('projects.id < ?', record.id).order('created_at ASC').last || Project.last
  end

  def self.next(record)
    Project.where('projects.id > ?', record.id).order('created_at ASC').first  || Project.first
  end
end
