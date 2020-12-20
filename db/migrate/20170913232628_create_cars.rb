class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :login
      t.string :email
      t.string :model
      t.integer :year
      t.string :color
      t.string :licence_plate

      t.timestamps
    end
  end
end
