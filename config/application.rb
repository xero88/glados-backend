require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GladosBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # add custom directories
    Dir[ Rails.root.join('app', 'entities', '**/') ]
    Dir[ Rails.root.join('app', 'events', '**/') ]
    Dir[ Rails.root.join('app', 'reducers', '**/') ]
    Dir[ Rails.root.join('app', 'persisters', '**/') ]
  end
end
