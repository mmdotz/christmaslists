class Budget < ActiveRecord::Base
  belongs_to            :user
  validates_presence_of :year

  def self.current_year_budget_amount(user, year)  # year is a 4-digit current_year string
    user.budgets.where('extract(year from year) = ?', year).pluck(:amount).join.to_i # holy good God refactor?
  end

  def formatted_year
    year.year
  end
end
