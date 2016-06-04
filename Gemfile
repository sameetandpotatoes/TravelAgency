source 'https://rubygems.org'
ruby '2.3.0'
gem 'rails', '4.1.8'
gem 'jquery-easing-rails'
gem 'pg'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'
gem 'asset_packager', '~> 0.2.0'
gem 'sitemap_generator'
gem 'actionpack-page_caching'
gem 'figaro'
gem 'json', '1.8.3'
gem 'haml'
gem 'haml-rails'
gem 'cloudinary'
gem 'rack-cache'
gem 'rack-cors', :require => 'rack/cors'
gem 'newrelic_rpm'

group :doc do
  gem 'sdoc', require: false
end
group :development do
	gem 'quiet_assets'
	gem 'pry-rails'
  gem "thin"
  gem 'better_errors'
end
group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
end
group :production, :staging do
  gem 'rails_12factor'
  gem 'unicorn'
  gem 'unicorn-rails'
end
