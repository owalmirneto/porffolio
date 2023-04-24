# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: { scope: :user_id }
  validates :website, presence: true

  mount_uploader :brand, ImagesUploader
end
