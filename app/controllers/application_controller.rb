class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user

  def authenticate_user
    unless user_logged_in?
      redirect_to login_path
    end
  end

  def current_user
    if user_logged_in?
      User.find(session[:logged_in_users_id])
    end
  end

  def user_logged_in?
    session[:logged_in_users_id].present?
  end

  def current_year
    session[:current_year]
  end


  # move these to ApplicationHelper and use callback in controller
  def total_number_paid(user) #second argument should be budget year
    user.purchases.where(bought: true).count
    #purchases where purchase_date.year LIKE?, current_year
  end

  def total_number_unpaid(user) #second argument should be budget year
    user.purchases.where(bought: false).count
  end

  def total_amt_paid(user) #second argument should be budget year
    user.purchases.where(bought: true).map { |purchase| purchase.cost}.sum
  end

  helper_method :user_logged_in?
  helper_method :current_user
  helper_method :current_year
  helper_method :total_number_paid
  helper_method :total_number_unpaid
  helper_method :total_amt_paid

end
