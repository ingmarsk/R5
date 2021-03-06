module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  # Remembers user in a persistent session
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # Returns the user corresponding to the remember token cookie
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    elsif cookies.signed[:user_id]
      user = User.find_by(id: cookies.signed[:user_id])
      if user.present? && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  def logged_in?
    !current_user.nil?
  end

  # Forgetes persistent session
  def forget
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remmeber_token)
  end

  # Logs out current user
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
end
