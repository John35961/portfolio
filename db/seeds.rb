require 'yaml'

ProjectSkill.destroy_all
Project.destroy_all
Skill.destroy_all

projects_source = YAML.safe_load(File.read('db/projects.yml'))
skills_source = YAML.safe_load(File.read('db/skills.yml'))

skills = {}

skills_source.each do |key, val|
  skill = Skill.create!(name: val['name'],
                        description: val['description'])
  skills[key] = skill
end

puts 'Created skills!'

projects_source.each do |val|
  project = Project.create!(name: val['name'],
                            description: val['description'],
                            project_url: val['project_url'],
                            github_url: val['github_url'],
                            banner_url: val['banner_url'])
  val['skills'].each do |skill|
    p = ProjectSkill.create!(project: project,
                             skill: skills[skill])
  end
end

puts 'Created projects and connections!'
