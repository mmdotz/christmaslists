class AddRecipienttoPurchases < ActiveRecord::Migration
  def change
    add_reference :purchases, :recipient, index: true
    add_foreign_key :purchases, :recipients
  end
end
