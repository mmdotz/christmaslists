class ApplicationController < ActionController::Base

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
    session[:current_year].to_i
  end

  helper_method :current_user

  def purchases
    current_user.purchases.where(purchase_date: DateTime.new(current_year - 1, 12, 25)...DateTime.new(current_year, 12, 24))
  end

  def recipients
    current_user.recipients.order(:name)
  end

  helper_method :user_logged_in?
  helper_method :current_year
  helper_method :purchases
  helper_method :recipients
end
