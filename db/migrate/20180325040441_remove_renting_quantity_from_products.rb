class RemoveRentingQuantityFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :renting_quantity, :integer
  end
end
