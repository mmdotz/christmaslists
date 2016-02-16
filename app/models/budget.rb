class Budget < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :year

  def self.budget_year_choices(user)
    user.budgets.map { |budget| budget.year.year }
  end

  def self.budget(user)
    user.budgets.last.amount #change this to current_year
  end
end
