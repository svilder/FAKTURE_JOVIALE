class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :adress_line_1
      t.string :adress_line_2
      t.string :postal_code
      t.string :city
      t.string :country
      t.integer :SIRET

      t.timestamps
    end
  end
end
