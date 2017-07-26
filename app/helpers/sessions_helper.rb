module SessionsHelper
  
  # Log in a user:
  def log_in(user)
    session[:user_id] = user.id
  end

  # Return current logged-in user:
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Return true if user is logged in, false otherwise:
  def logged_in?
    !current_user.nil?
  end
end
