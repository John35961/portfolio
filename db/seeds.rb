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

projects_source.each do |key, val|
  project = Project.create!(name: val['name'],
                            release_date: Date.new(val['release_date_year'].to_i,
                                           val['release_date_month'].to_i,
                                           val['release_date_day'].to_i),
                            short_description: val['short_description'],
                            long_description: val['long_description'],
                            project_url: val['project_url'],
                            github_url: val['github_url'],
                            banner_remote_url: val['banner_remote_url'],
                            banner_alt_text: val['banner_alt_text'],
                            is_active: val['is_active'])
  val['skills'].each do |skill|
    ProjectSkill.create!(project: project,
                         skill: skills[skill])
  end
end

puts 'Created projects and connections!'
