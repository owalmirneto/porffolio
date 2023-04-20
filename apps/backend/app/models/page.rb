# frozen_string_literal: true

class Page < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :country, presence: true
  validates :email, presence: true
end
