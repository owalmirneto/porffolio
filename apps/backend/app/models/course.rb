# frozen_string_literal: true

class Course < ApplicationRecord
  belongs_to :school

  validates :title, presence: true
  validates :start_date, presence: true
end
