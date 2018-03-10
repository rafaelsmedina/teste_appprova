class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
