class RemoveBelongsToFromBudget < ActiveRecord::Migration
  def change
    remove_column :budgets, :belongs_to
  end
end
