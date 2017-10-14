class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :ra
      t.references :department, index:true, null:false
      t.timestamps
    end
  end
end
