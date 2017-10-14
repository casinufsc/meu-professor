class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.boolean :active
      t.integer :code
      t.text :description
      t.references :subject, index: true, null:false
      t.timestamps
    end
  end
end
