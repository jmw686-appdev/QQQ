# frozen_string_literal: true

class CreateToolConsumers < ActiveRecord::Migration[6.0]
  def change
    create_table :tool_consumers do |t|
      t.string :instance_guid
      t.string :instance_name
      t.string :instance_description
      t.string :instance_url
      t.string :instance_contact_email

      t.timestamps
    end
  end
end
