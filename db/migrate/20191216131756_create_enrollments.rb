class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.integer :context_id
      t.integer :user_id
      t.string :roles

      t.timestamps
    end
  end
end
