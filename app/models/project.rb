class Project < ApplicationRecord
  has_many :project_skills
  has_many :skills, through: :project_skills
end
