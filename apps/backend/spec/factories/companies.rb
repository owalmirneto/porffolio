# frozen_string_literal: true

FactoryBot.define do
  factory :company do
    user
    name { Faker::Company.name }
    website { Faker::Internet.url }

    trait :blank do
      user { nil }
      name { nil }
      website { nil }
      brand { nil }
    end

    factory :blank_company, traits: [:blank]
  end
end
