SitemapGenerator::Sitemap.default_host = "http://www.toptiertraveling.com"
SitemapGenerator::Sitemap.create do
  add hawaii_path, :priority => 0.9, :changefreq => 'daily'
  add contact_path, :priority => 0.9, :changefreq => 'daily'
  add about_path, :priority => 0.9, :changefreq => 'daily'
  add home_path, :priority => 0.9, :changefreq => 'daily'
end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks
