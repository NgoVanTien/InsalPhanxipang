class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :address
      t.string :phone
      t.string :personal_card
  

      t.timestamps
    end
  end
end
