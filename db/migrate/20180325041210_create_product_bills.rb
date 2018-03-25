class CreateProductBills < ActiveRecord::Migration[5.1]
  def change
    create_table :product_bills do |t|
      t.integer :renting_quantity
      t.string :renting_fee_product
      t.string :name_product
      t.references :product, foreign_key: true
      t.references :bill, foreign_key: true
      t.references :size, foreign_key: true

      t.timestamps
    end
  end
end
