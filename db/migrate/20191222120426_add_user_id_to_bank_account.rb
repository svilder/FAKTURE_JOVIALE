class AddUserIdToBankAccount < ActiveRecord::Migration[6.0]
  def change
    add_reference :bank_accounts, :user, null: false, foreign_key: true
  end
end
