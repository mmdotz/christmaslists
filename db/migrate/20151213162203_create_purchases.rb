class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :item
      t.string :url
      t.string :vendor
      t.integer :cost
      t.string :tracking_num
      t.boolean :bought
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
