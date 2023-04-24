# frozen_string_literal: true

module Types
  class CompanyType < Types::BaseObject
    field :id, String, null: false
    field :name, String, null: false
    field :website, String, null: false
    field :brand, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
