# frozen_string_literal: true

class School < ApplicationRecord
  belongs_to :user

  has_many :courses, dependent: :restrict_with_exception

  validates :name, presence: true
end
