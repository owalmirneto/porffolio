Rails.application.configure do
  ## TimeZone
  #
  config.time_zone = ActiveSupport::TimeZone.new("America/Recife")
  config.active_record.default_timezone = :local
end
