class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.present? && @user.authenticate(params[:password])
      set_user_session(@user)
      redirect_to home_path, notice: "Successful log-in"
    else
      flash[:alert] = "Username or password did not match"
      render :new
    end
  end

  def destroy
    session[logged_in_users_id] = nil
    redirect_to root, notice: "You have logged out"
  end

  def set_user_session(user)
    session[:logged_in_users_id] = user.id
  end

end
