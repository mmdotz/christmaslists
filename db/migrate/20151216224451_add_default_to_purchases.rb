class AddDefaultToPurchases < ActiveRecord::Migration
  def change_column
    change_column :purchases, :purchase_date, :datetime, :null => false
  end
end

#this didn't add default
