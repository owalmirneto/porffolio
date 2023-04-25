# frozen_string_literal: true

class Skill < ApplicationRecord
  belongs_to :user

  validates :kind, presence: true
  validates :name, presence: true, uniqueness: { scope: :user_id }

  has_enumeration_for :kind, with: SkillKinds, create_helpers: true

  # mount_uploader :image, ImagesUploader
end
