class CreateAttachedImages < ActiveRecord::Migration[6.0]
  def change
    create_table :attached_images do |t|
      t.integer :image_id
      t.integer :response_id
      t.integer :question_id

      t.timestamps
    end
  end
end
