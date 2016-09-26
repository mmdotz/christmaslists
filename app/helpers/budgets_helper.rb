module BudgetsHelper
  def budget_year_choices
    current_user.budgets.map { |budget| budget.formatted_year} #can't pluck due to formatting
  end
end
