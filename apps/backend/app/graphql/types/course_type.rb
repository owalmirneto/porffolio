# frozen_string_literal: true

module Types
  class CourseType < Types::BaseObject
    include ActionView::Helpers::DateHelper

    field :id, String, null: false
    field :title, String
    field :subtitle, String
    field :location, String
    field :start_date, String
    field :finish_date, String
    field :school, Types::SchoolType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def start_date
      object.start_date.strftime("%b %Y")
    end

    def finish_date
      object.finish_date.strftime("%b %Y")
    end
  end
end
