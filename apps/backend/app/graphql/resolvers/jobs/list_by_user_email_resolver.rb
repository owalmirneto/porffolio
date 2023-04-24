# frozen_string_literal: true

module Resolvers
  module Jobs
    class ListByUserEmailResolver < Resolvers::BaseResolver
      description "Find jobs by user"

      argument :user_email, String, required: false, description: "User email is required"

      type [::Types::JobType], null: true

      def resolve(user_email:)
        Job.includes(company: :user).where(users: { email: user_email })
      end
    end
  end
end
