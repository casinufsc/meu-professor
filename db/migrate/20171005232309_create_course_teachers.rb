class CreateCourseTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :course_teachers do |t|
      t.references :course, index: true
      t.references :teacher, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
