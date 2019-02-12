class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.belongs_to :grade,  null: false, foreign_key: true
      t.string :sentence,   null: false
      t.string :answer
      t.boolean :published, null: false, default: false

      t.timestamps
    end
  end
end
