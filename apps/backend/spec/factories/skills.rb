# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    user
    kind { SkillKinds.sample }
    name { Faker::Name.unique.name }

    trait :blank do
      user { nil }
      kind { nil }
      name { nil }
    end

    factory :blank_skill, traits: [:blank]
  end
end
