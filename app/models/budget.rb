class Budget < ActiveRecord::Base
  belongs_to            :user
  validates_presence_of :year

  def self.budget_year_choices(user)
    user.budgets.map { |budget| budget.formatted_year }
  end

  def self.current_year_budget(user, year)  # year is a 4-digit current_year string
    user.budgets.where('extract(year from year) = ?', year) # year is datetime format, not = to current_year string
  end

  def formatted_year
    year.year # Fixnum
  end
end
