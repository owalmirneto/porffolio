# frozen_string_literal: true

class Page < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :country, presence: true
  validates :email, presence: true
end
