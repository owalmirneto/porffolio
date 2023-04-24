# frozen_string_literal: true

module Types
  class JobType < Types::BaseObject
    include ActionView::Helpers::DateHelper

    field :company, Types::CompanyType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :description, String
    field :duration, String
    field :hire_date, String
    field :id, String, null: false
    field :rescission_date, String
    field :title, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def hire_date
      object.hire_date.strftime("%b %Y")
    end

    def rescission_date
      return "Present" if object.rescission_date.blank?

      object.rescission_date.strftime("%b %Y")
    end

    def duration
      finish_date = object.rescission_date.presence || Date.current

      distance_of_time_in_words(object.hire_date, finish_date)
    end
  end
end
