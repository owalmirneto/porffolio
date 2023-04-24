# frozen_string_literal: true

FactoryBot.define do
  factory :job do
    company
    title { Faker::Educator.course_name }
    hire_date { Faker::Date.between(from: 3.years.ago, to: Date.current) }
    rescission_date { Faker::Date.between(from: 1.year.ago, to: Date.current) }
    description { Faker::Lorem.paragraphs.join }

    trait :blank do
      company { nil }
      title { nil }
      hire_date { nil }
      rescission_date { nil }
      description { nil }
    end

    factory :blank_job, traits: [:blank]
  end
end
