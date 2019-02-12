class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :title,      null: false
      t.boolean :published, null: false, default: false
      t.integer :grade_num

      t.timestamps
    end
  end
end
