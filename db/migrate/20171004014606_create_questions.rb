class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.references :response, index: true, null: false
      t.timestamps
    end
  end
end
