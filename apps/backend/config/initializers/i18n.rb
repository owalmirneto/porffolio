# frozen_string_literal: true

Rails.application.configure do
  ## Load I18n configuration for locales
  #
  config.i18n.enforce_available_locales = true
  config.i18n.available_locales = ["en", "pt-BR"]
  config.i18n.default_locale = "pt-BR"
  config.i18n.load_path += Dir[Rails.root.join("config/locales/**/*.{rb,yml}").to_s]
end
