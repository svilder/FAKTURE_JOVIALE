class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :title
      t.datetime :date_creation
      t.datetime :date_due_paiement
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
