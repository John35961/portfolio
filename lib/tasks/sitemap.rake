require 'Time'

desc 'This task generates an updated sitemap every monday'

task :generate_sitemap => :environment do
  Rake::Task['sitemap:refresh'].invoke if Time.now.monday?
end
