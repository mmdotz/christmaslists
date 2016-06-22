class HomesController < ApplicationController
  def index
    @unbought_purchases = current_user.purchases.where(bought: false)
  end

  def set_current_year
    session[:current_year] = params[:year]
    respond_to do |format|      #reloads page
       format.js { render inline: "location.reload();" }
     end
   end

end
