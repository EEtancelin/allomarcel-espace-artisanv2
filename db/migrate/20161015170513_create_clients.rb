class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :phone_number

      t.timestamps
    end
  end
end
