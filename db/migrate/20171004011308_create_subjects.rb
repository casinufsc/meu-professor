class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :code
      t.references :department, index:true, null:false
      t.timestamps
    end
  end
end
