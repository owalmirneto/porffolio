# frozen_string_literal: true

class CreateJobsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs, id: :uuid do |t|
      t.belongs_to :company, null: false, foreign_key: true, type: :uuid
      t.string :title, null: false
      t.date :hire_date, null: false
      t.date :rescission_date, null: true
      t.string :description, null: true

      t.timestamps
    end
  end
end
