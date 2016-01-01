require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)
module GithubBlog
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.generators.factory_girl false
    config.generators.test_framework  nil
  end
end
