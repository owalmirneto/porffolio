# frozen_string_literal: true

module Types
  class SchoolType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, String, null: false
    field :name, String
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :website, String
  end
end
