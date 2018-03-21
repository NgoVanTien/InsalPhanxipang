class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :price
      t.string :renting_fee
      t.integer :renting_quantity
      t.string :image

      t.timestamps
    end
  end
end
