class JoinPurchaseAndRecipients < ActiveRecord::Migration
  def change
    create_join_table :purchases, :recipients, table_name: :gifts
  end
end
