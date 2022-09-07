SitemapGenerator::Sitemap.default_host = ENV['HOST']
SitemapGenerator::Sitemap.compress = false
SitemapGenerator::Sitemap.public_path = 'tmp/sitemap'

SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
  aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  fog_provider: 'AWS',
  fog_directory: ENV['S3_BUCKET_NAME'],
  fog_region: ENV['S3_REGION']
)

SitemapGenerator::Sitemap.sitemaps_host = "https://#{ENV['S3_BUCKET_NAME']}.s3.#{ENV['S3_REGION']}.amazonaws.com"

SitemapGenerator::Sitemap.create do
  add '/contact', changefreq: 'yearly', lastmod: Time.now, priority: 0.3

  add '/legal', changefreq: 'yearly', lastmod: Time.now, priority: 0.3

  add projects_path, changefreq: 'monthly', lastmod: Time.now, priority: 0.5

  Project.all.order(created_at: :desc).each do |project|
    add "/projects/#{project.slug}", changefreq: 'monthly', lastmod: project.updated_at, priority: 0.5
  end
end
