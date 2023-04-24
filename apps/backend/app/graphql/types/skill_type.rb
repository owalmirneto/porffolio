# frozen_string_literal: true

module Types
  class SkillType < Types::BaseObject
    field :id, String, null: false
    field :kind, String, method: :kind_humanize
    field :name, String, null: false
    field :image, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
