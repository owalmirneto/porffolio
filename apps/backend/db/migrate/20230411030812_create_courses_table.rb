# frozen_string_literal: true

class CreateCoursesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :courses, id: :uuid do |t|
      t.belongs_to :school, null: false, foreign_key: true, type: :uuid
      t.string :title, null: false
      t.string :subtitle, null: true
      t.date :start_date, null: false
      t.date :finish_date, null: true
      t.integer :ordination, null: false, default: 0

      t.timestamps
    end
  end
end
