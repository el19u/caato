require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Caato
  class Application < Rails::Application
    HOSTNAME = ENV['HOSTNAME']
    config.load_defaults 6.1
    config.time_zone = 'Taipei'
    # config.i18n.default_locale = 'zh-TW'
    config.active_record.default_timezone = :local

    if ['development', 'test'].include? ENV['RAILS_ENV']
      Dotenv::Railtie.load
    end
    
    config.generators do |g| 
      g.test_framework :rspec, 
        fixtures: false, 
        view_specs: false, 
        helper_specs: false, 
        routing_specs: false 
    end
  end
end
