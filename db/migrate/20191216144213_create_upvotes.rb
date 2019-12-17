class CreateUpvotes < ActiveRecord::Migration[6.0]
  def change
    create_table :upvotes do |t|
      t.integer :post_id
      t.string :post_type 
      t.integer :enrollment_id

      t.timestamps
    end
  end
end
