# frozen_string_literal: true

class CreateSkillKindsEnum < ActiveRecord::Migration[7.0]
  def change
    create_enum :skill_kinds, ["currently", "infrastructure", "interests", "oldest"]
  end
end
