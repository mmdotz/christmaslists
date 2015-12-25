class AddRecipientsToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :recipient
    add_reference :purchases, :recipient, index: true, foreign_key: true
  end
end
