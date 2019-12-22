class RemoveCompanyReferenceToClients < ActiveRecord::Migration[6.0]
  def change
    remove_reference :clients, :company
  end
end
