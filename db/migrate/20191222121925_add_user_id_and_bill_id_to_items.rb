class AddUserIdAndBillIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :user, null: false, foreign_key: true
    add_reference :items, :bill, null: false, foreign_key: true
  end
end
