class CreateSkillKindsEnum < ActiveRecord::Migration[7.0]
  def change
    create_enum :skill_kinds, ["current", "infrastructure", "interests", "oldest"]
  end
end
