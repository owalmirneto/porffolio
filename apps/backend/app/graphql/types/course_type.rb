# frozen_string_literal: true

module Types
  class CourseType < Types::BaseObject
    field :id, String, null: false
    field :title, String
    field :subtitle, String
    field :start_date, String
    field :finish_date, String
    field :school, Types::SchoolType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
