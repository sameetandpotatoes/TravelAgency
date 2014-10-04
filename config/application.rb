require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)

module TravelAgency
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')
  end
end
