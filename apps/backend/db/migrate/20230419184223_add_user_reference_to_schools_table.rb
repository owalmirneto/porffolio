# frozen_string_literal: true

class AddUserReferenceToSchoolsTable < ActiveRecord::Migration[7.0]
  def change
    # add_reference :schools, :user, null: false, foreign_key: true, type: :uuid
    change_table :schools do |t|
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
    end
  end
end
