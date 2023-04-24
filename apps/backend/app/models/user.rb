# frozen_string_literal: true

class User < ApplicationRecord
  has_many :schools, dependent: :restrict_with_exception
  has_many :courses, through: :schools
  has_many :pages, dependent: :restrict_with_exception
  has_many :companies, dependent: :restrict_with_exception

  encrypts :email, deterministic: true, downcase: true

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
