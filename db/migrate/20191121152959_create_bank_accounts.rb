class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.string :description
      t.integer :iban
      t.integer :swift

      t.timestamps
    end
  end
end
