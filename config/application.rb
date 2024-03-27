require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ActiveJobExample
  class Application < Rails::Application
    config.active_job.queue_adapter = :sidekiq
    config.active_storage.variant_processor = :vips
  end
end
