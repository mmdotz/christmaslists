class Budget < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :year

  def self.budget_year_choices(user)
    user.budgets.map { |budget| budget.formatted_year }
  end

  def budget(user)
    #current_user current_year amount
  end


  def formatted_year
    year.year
  end
end
