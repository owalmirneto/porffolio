# frozen_string_literal: true

FactoryBot.define do
  factory :school do
    name { Faker::Company.name }
    website { Faker::Internet.url }

    trait :blank do
      name { nil }
      website { nil }
    end

    factory :blank_school, traits: [:blank]
  end
end
