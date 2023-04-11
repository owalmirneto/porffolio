# frozen_string_literal: true

module Resolvers
  module Courses
    class ListResolver < Resolvers::BaseResolver
      description "List all courses"

      type [::Types::CourseType], null: true

      def resolve
        Course.includes(:school).order(ordination: :asc)
      end
    end
  end
end
