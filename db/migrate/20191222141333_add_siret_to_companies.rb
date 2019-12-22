class AddSiretToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :siret, :integer
  end
end
