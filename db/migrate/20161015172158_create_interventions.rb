class CreateInterventions < ActiveRecord::Migration[5.0]
  def change
    create_table :interventions do |t|
      t.string :nature
      t.references :client
      t.references :artisan
      t.float :quotation_amount
      t.float :final_amount
      t.datetime :asked_date
      t.datetime :scheduled_date
      t.string :avancement

      t.timestamps
    end
  end
end
