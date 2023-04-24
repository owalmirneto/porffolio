# frozen_string_literal: true

module Types
  class CompanyType < Types::BaseObject
    field :brand, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, String, null: false
    field :name, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :website, String, null: false
  end
end
