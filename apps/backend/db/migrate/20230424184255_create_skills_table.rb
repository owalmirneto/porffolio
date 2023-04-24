# frozen_string_literal: true

class CreateSkillsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :skills, id: :uuid do |t|
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.enum :kind, default: "currently", enum_type: "skill_kinds"
      t.string :name, null: false
      t.string :image

      t.timestamps

      t.index [:user_id, :name], unique: true
    end
  end
end
