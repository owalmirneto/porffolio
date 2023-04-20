# frozen_string_literal: true

class CreatePagesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :pages, id: :uuid do |t|
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.string :title, null: false
      t.string :description, null: false, array: true, default: []
      t.string :location, null: false
      t.string :country, null: false
      t.jsonb :email, null: false

      t.timestamps
    end
  end
end
