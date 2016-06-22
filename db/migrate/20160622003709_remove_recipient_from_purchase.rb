class RemoveRecipientFromPurchase < ActiveRecord::Migration
  def change
    remove_column :purchases, :recipient_id
  end
end
