class RemoveUserFromBudgets < ActiveRecord::Migration
  def change
    remove_column :budgets, :user
  end
end
