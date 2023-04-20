# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.unique.safe_email }

    trait :blank do
      name { nil }
      email { nil }
    end

    factory :blank_user, traits: [:blank]
  end
end
