class RemoveEmailFromCars < ActiveRecord::Migration[5.1]
  def change
    change_table :cars do |t|
      t.remove :email
    end
  end
end
