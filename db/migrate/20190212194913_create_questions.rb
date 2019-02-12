class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :grade_id
      t.string :sentence
      t.string :answer
      t.boolean :published

      t.timestamps
    end
  end
end
