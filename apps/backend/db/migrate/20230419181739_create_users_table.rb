# frozen_string_literal: true

class CreateUsersTable < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name, null: false
      t.jsonb :email, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
