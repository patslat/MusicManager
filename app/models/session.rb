class Session < ActiveRecord::Base
  attr_accessible :session_token, :user_id
end
