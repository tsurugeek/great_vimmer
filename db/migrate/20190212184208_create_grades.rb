class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :title
      t.boolean :published
      t.integer :grade_num

      t.timestamps
    end
  end
end
