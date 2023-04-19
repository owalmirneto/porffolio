# frozen_string_literal: true

FactoryBot.define do
  factory :page do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraphs(number: 5) }
    location { Faker::Address.city }
    country { Faker::Address.country }
    email { Faker::Internet.unique.safe_email }

    trait :blank do
      title { nil }
      description { nil }
      location { nil }
      country { nil }
      email { nil }
    end

    factory :blank_page, traits: [:blank]
  end
end
