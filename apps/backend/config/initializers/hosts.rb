# frozen_string_literal: true

Rails.application.configure do
  config.asset_host =
    if ENV["CARRIER_WAVE_STORAGE"] == "fog"
      ENV.fetch("CARRIER_WAVE_ASSET_HOST", nil)
    else
      "http://localhost:#{ENV.fetch('PORT', 3001)}"
    end
  # config.asset_host = ENV["CARRIER_WAVE_STORAGE"]
end
