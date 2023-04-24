# frozen_string_literal: true

class Job < ApplicationRecord
  belongs_to :company

  validates :title, presence: true
  validates :hire_date, presence: true
end
