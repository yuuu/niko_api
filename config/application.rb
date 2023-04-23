# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module NikoApi
  class Application < Rails::Application
    config.load_defaults 7.0
    config.api_only = true
    I18n.available_locales = %i[en ja]
    config.i18n.default_locale = :ja
  end
end
