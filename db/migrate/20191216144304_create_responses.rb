class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.text :body
      t.integer :enrollment_id
      t.integer :question_id
      t.boolean :anonymous_to_all, default: false
      t.boolean :anonymous_to_students, default: false
      t.integer :parent_id
      t.boolean :marked_as_answer, default: false
      t.boolean :marked_good_by_instructor, default: false

      t.timestamps
    end
  end
end
