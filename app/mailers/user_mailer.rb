class UserMailer < ActionMailer::Base
  default from: "patrick@music.com"

  def welcome_email(user, activation_token)
    @user = user
    @url = "localhost:3000/activate?token=#{activation_token}"

    mail(to: user.email, subkect: "Welcome!")
  end


end
