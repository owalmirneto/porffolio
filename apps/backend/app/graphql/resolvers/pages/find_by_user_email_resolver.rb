# frozen_string_literal: true

module Resolvers
  module Pages
    class FindByUserEmailResolver < Resolvers::BaseResolver
      description "Find page by user"

      argument :user_email, String, required: false, description: "User email is required"

      type ::Types::PageType, null: true

      def resolve(user_email:)
        Page.includes(:user).find_by(users: { email: user_email })
      end
    end
  end
end
