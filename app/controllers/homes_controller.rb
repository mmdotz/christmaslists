class HomesController < ApplicationController
  def index
    @current_year = current_user.purchases.first.purchase_date.strftime("%Y")
  end

end
