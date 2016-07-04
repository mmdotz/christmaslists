class HomesController < ApplicationController
  def index
    @unbought_purchases = current_user.purchases.where(bought: false)
  end

# reload page after year/season is chosen
  def set_current_year
    session[:current_year] = params[:year]
    respond_to do |format|
       format.js { render inline: "location.reload();" }
     end
   end

end
