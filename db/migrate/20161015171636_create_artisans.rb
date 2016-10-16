class CreateArtisans < ActiveRecord::Migration[5.0]
  def change
    create_table :artisans do |t|
      t.string :desription
      t.string :compagny_name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :manager_name
      t.string :phone_number
      t.string :manager_email
      t.string :insurer
      t.string :insurance_number

      t.timestamps
    end
  end
end
