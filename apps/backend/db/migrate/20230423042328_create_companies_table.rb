# frozen_string_literal: true

class CreateCompaniesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :companies, id: :uuid do |t|
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.string :name, null: false
      t.string :website, null: false
      t.string :brand

      t.timestamps

      t.index [:user_id, :name], unique: true
    end
  end
end
