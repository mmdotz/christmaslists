class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.integer :age, :null => false
      t.text :size
      t.text :notes
      t.string :first
      t.string :last
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
