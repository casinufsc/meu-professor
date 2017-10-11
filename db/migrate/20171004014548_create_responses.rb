class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :score
      t.text :comment
      t.references :user, index: true, null: false
      t.references :rating, index: true, null: false
      t.timestamps
    end
  end
end
