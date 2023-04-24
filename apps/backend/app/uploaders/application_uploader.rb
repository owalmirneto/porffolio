# frozen_string_literal: true

class ApplicationUploader < CarrierWave::Uploader::Base
  def store_dir
    "uploads/#{model.class.to_s.underscore.pluralize}/#{mounted_as}/#{model.id}"
  end

  def size_range
    0..(512.kilobytes)
  end
end
