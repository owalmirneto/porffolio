# frozen_string_literal: true

FactoryBot.define do
  factory :course do
    school
    title { Faker::Educator.course_name }
    subtitle { Faker::Educator.subject }
    start_date { Faker::Date.between(from: 2.months.ago, to: Date.current) }
    finish_date { Faker::Date.between(from: Date.current, to: 2.months.from_now) }

    trait :blank do
      school { nil }
      title { nil }
      subtitle { nil }
      start_date { nil }
      finish_date { nil }
    end

    factory :blank_course, traits: [:blank]
  end
end
