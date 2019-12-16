# frozen_string_literal: true

class CreateCredentials < ActiveRecord::Migration[6.0]
  def change
    create_table :credentials do |t|
      t.string :consumer_key
      t.string :consumer_secret
      t.integer :administrator_id
      t.boolean :enabled, default: true

      t.timestamps
    end
  end
end
