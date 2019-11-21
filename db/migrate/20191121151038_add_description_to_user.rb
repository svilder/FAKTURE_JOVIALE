class AddDescriptionToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :adress_line_1, :string
    add_column :users, :adress_line_2, :string
    add_column :users, :postal_code, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :siret, :integer
    add_column :users, :phone, :string
    add_column :users, :tva, :boolean
  end
end
