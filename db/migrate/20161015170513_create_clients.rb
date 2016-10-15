class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :adress_l1
      t.string :adress_l2
      t.string :city
      t.string :postal_code

      t.timestamps
    end
  end
end
