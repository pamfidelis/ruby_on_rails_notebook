class CreateAddres < ActiveRecord::Migration[5.1]
  def change
    create_table :addres do |t|
      t.string :street
      t.string :city
      t.string :state
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
