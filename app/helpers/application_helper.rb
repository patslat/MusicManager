module ApplicationHelper
  def current_user
    if session.nil?
      @current_user = false
    else
      user_session = Session.find_by_session_token(session[:session_token])
      @current_user ||= user_session.user unless user_session.nil?
    end
  end

  def logged_in?
    !!current_user
  end
end
