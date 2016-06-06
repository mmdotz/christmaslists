require 'test_helper'

class BudgetTest < ActiveSupport::TestCase
  def test_return_array_of_years_formatted
    user.budgets.map { |budget| budget.formatted_year }
  end
end
