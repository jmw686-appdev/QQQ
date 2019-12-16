class CreateRequiredFields < ActiveRecord::Migration[6.0]
  def change
    create_table :required_fields do |t|
      t.string :input_type
      t.string :instructions
      t.integer :question_template_id
      t.text :options

      t.timestamps
    end
  end
end
