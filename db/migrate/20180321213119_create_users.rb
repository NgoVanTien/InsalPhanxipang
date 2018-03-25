class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :address
      t.string :phone_number
      t.string :personal_card
      t.integer :role

      t.timestamps
    end
  end
end
