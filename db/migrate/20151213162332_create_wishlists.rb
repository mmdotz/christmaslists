class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :item, :null => false
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
