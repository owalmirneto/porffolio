# frozen_string_literal: true

FactoryBot.define do
  factory :school do
    user
    name { Faker::Company.name }
    website { Faker::Internet.url }

    trait :blank do
      user { nil }
      name { nil }
      website { nil }
    end

    factory :blank_school, traits: [:blank]
  end
end
