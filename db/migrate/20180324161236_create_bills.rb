class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.date :start_renting
      t.date :end_renting
      t.string :total
      t.integer :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
