class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.float :grade
      t.float :percent_of_total
      t.integer :course_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
