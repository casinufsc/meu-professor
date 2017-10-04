class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|

      t.timestamps
    end
  end
end
