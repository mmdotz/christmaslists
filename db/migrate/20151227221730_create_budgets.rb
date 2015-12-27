class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.date :year
      t.integer :amount
      t.string :user
      t.string :belongs_to

      t.timestamps null: false
    end
  end
end
