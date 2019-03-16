require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module FbCloneWork
  class Application < Rails::Application
    config.load_defaults 5.1
  end
end

# タイムゾーンの設定を日本に変更
config.time_zone = 'Tokyo'
config.active_record.default_timezone = :local
