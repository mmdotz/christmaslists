class HomesController < ApplicationController
  def index
  end

  def set_current_year
    session[:current_year] = params[:year]
    render :text => session[:current_year] #reload the page
  end

end
