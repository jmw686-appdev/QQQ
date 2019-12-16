class CreateQuestionTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :question_templates do |t|
      t.integer :context_id
      t.string :name
      t.integer :points_awarded

      t.timestamps
    end
  end
end
