SitemapGenerator::Sitemap.default_host = ENV['HOST']
SitemapGenerator::Sitemap.compress = false

SitemapGenerator::Sitemap.create do
  add '/contact', changefreq: 'yearly', lastmod: Time.now, priority: 0.3

  add '/legal', changefreq: 'yearly', lastmod: Time.now, priority: 0.3

  add projects_path, changefreq: 'monthly', lastmod: Time.now, priority: 0.5

  Project.all.order(created_at: :desc).each do |project|
    add "/projects/#{project.slug}", changefreq: 'monthly', lastmod: project.updated_at, priority: 0.5
  end
end
