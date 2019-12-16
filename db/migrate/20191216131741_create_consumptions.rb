class CreateConsumptions < ActiveRecord::Migration[6.0]
  def change
    create_table :consumptions do |t|
      t.integer :tool_consumer_id
      t.integer :credential_id

      t.timestamps
    end
  end
end
