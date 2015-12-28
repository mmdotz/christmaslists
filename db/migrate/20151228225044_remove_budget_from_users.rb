class RemoveBudgetFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :budget
  end
end
