module BudgetsHelper
  def budget_year_choices
    current_user.budgets.map { |budget| budget.year.year}
  end
end
