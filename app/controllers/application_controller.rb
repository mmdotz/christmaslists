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

  def total_purchases(user)
    user.purchases.all.count
  end

  def total_paid(user)
    user.purchases.all.map { |purchase| purchase.cost}.sum
  end

  helper_method :user_logged_in?
  helper_method :current_user
  helper_method :total_paid
  helper_method :total_purchases

end
