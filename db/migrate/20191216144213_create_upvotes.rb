class CreateUpvotes < ActiveRecord::Migration[6.0]
  def change
    create_table :upvotes do |t|
      t.integer :question_id
      t.integer :enrollment_id

      t.timestamps
    end
  end
end
