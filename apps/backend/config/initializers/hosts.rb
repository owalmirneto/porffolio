# frozen_string_literal: true

Rails.application.configure do
  config.asset_host = ENV.fetch("CARRIER_WAVE_ASSET_HOST")
end
