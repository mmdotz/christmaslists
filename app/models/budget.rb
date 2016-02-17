class Budget < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :year

  def self.budget_year_choices(user)
    user.budgets.map { |budget| budget.formatted_year }
  end

  def self.current_year_budget(user, year)
    user.budgets.where('budget_year_choices LIKE ?', year)   # => match the user's budget years to the current_year
  end                                                        # budget_year_choices doesn't exist as column, how to compare?

  def formatted_year
    year.year
  end
end
