class AddStatusToBills < ActiveRecord::Migration[6.0]
  def change
    add_column :bills, :validated, :boolean
    add_column :bills, :paid, :boolean
    add_column :bills, :sent, :boolean
  end
end
