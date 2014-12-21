require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)

module TravelAgency
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')
		config.assets.enabled = true
    config.assets.js_compressor = :uglifier
    config.assets.css_compressor = :sass
    config.assets.precompile += ['travels.js.erb', 'travels_hawaii.js.erb','pages.js','pages_home.js']
    config.action_controller.page_cache_directory = "#{Rails.root.to_s}/public/deploy"
    config.static_cache_control = "public, max-age=31536000"
  end
end
