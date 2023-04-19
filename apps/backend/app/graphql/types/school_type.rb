# frozen_string_literal: true

module Types
  class SchoolType < Types::BaseObject
    field :id, String, null: false
    field :name, String
    field :website, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
