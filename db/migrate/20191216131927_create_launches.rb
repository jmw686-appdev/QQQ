# frozen_string_literal: true

class CreateLaunches < ActiveRecord::Migration[6.0]
  def change
    create_table :launches do |t|
      t.jsonb :payload, null: false, default: {}
      t.integer :context_id
      t.integer :resource_id
      t.integer :enrollment_id
      t.integer :user_id
      t.integer :tool_consumer_id

      t.timestamps
    end
  end
end
