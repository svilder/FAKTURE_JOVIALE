class ChangeSiretToCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :SIRET
  end
end
