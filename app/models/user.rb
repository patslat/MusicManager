class User < ActiveRecord::Base
  attr_accessible :activation_token, :admin, :email, :password_digest
  has_many :notes
  has_one :session

  def valid_password?(password)
    password_digest == Digest::SHA2.base64digest(password)
  end

end
