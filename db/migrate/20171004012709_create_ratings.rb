class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :halfyear, index:true, null:false
      t.references :course_teacher, index:true, null:false
      t.timestamps
    end
  end
end
