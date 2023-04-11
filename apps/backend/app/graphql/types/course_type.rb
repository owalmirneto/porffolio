# frozen_string_literal: true

module Types
  class CourseType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :finish_date, String
    field :id, String, null: false
    field :school, Types::SchoolType, null: false
    field :start_date, String
    field :subtitle, String
    field :title, String
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
