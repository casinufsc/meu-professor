class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|

      t.timestamps
    end
  end
end
