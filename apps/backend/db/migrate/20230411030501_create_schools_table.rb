# frozen_string_literal: true

class CreateSchoolsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :schools, id: :uuid do |t|
      t.string :name, null: false
      t.string :website, null: true

      t.timestamps
    end
  end
end
