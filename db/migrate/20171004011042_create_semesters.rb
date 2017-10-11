class CreateSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :semesters do |t|
      t.datetime :year
      t.integer :halfyear
      t.timestamps
    end
  end
end
