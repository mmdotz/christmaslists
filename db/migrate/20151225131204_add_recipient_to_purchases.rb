class AddRecipientToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :recipient
    add_reference :purchases, :recipient, index: true
    add_foreign_key :purchases, :recipient
  end
end
