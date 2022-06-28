class Skill < ApplicationRecord
  has_many :project_skills
  has_many :projects, through: :project_skills
end
