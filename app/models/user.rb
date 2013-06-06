class User < ActiveRecord::Base
  attr_accessible :activation_token, :admin, :email, :password_digest
  has_many :notes
  has_one :session

end
