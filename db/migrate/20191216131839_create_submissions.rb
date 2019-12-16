# frozen_string_literal: true

class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.integer :enrollment_id
      t.integer :resource_id
      t.float :score, default: 0.0

      t.timestamps
    end
  end
end
