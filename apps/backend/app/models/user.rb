# frozen_string_literal: true

class User < ApplicationRecord
  encrypts :email, deterministic: true, downcase: true

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
