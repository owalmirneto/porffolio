# frozen_string_literal: true

module Types
  class PageType < Types::BaseObject
    field :id, String, null: false
    field :title, String, null: false
    field :description, [String], null: false
    field :location, String, null: false
    field :country, String, null: false
    field :email, GraphQL::Types::JSON, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
