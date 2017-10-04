class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|

      t.timestamps
    end
  end
end
