# frozen_string_literal: true

module Resolvers
  module Skills
    class ListByUserEmailResolver < Resolvers::BaseResolver
      description "List all skills by user"

      argument :user_email, String, required: false, description: "User email is required"

      type [::Types::SkillType], null: true

      def resolve(user_email:)
        Skill.includes(:user).where(users: { email: user_email }).order(kind: :asc)
      end
    end
  end
end
