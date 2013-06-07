class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if (not user.nil?) && user.valid_password?(params[:password])
      token = SecureRandom::base64(16)
      Session.create(user_id: user.id, session_token: token)
      session[:session_token] = token

      flash[:notice] = "Login successful"
      redirect_to bands_url
    else
      flash[:notice] = "Invalid login"
      redirect_to bands_url
    end
  end

  def destroy
    if logged_in?
      current_user.session.session_token = nil
      current_user.save
      session[:session_token] = nil

      flash[:notice] = "You have been logged out"
      redirect_to bands_url
    else
      flash[:notice] = "You weren't logged in"
      redirect_to bands_url
    end

  end
end
