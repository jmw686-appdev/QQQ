class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.integer :enrollment_id
      t.string :assignment_tag
      t.boolean :anonymous_to_all, default: false
      t.boolean :anonymous_to_students, default: false
      t.boolean :marked_good_by_instructor, default: false

      t.timestamps
    end
  end
end
