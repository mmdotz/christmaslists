class HomesController < ApplicationController
  def index
    @current_year = current_user.budgets.last.year
  end

end
