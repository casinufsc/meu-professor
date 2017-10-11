class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :ra
      t.string :name
      t.integer :situation
      t.string :email
      t.integer :role, default:0
      t.timestamps
    end
  end
end
