class UsersController < ApplicationController


  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(params[:user])
    user.activation_token = SecureRandom::base64(16)
    user.password_digest = Digest::SHA2.base64digest(params[:password])

    if user.save
      flash[:notice] = "You have been sent a confirmation email"
      msg = UserMailer.welcome_email(user, user.activation_token)
      msg.deliver!

      redirect_to bands_url
    else
      flash[:notice] = "Failed to add user."
      redirect_to bands_url
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to bands_url
  end

  def activate
    user = User.find_by_activation_token(params[:token])
    if user.activation_token == params[:token]
      user.activated = true
      user.save

      redirect_to bands_url
    else
      flash[:notice] = "Invalid activation token"
      redirect_to bands_url
    end
  end


end
