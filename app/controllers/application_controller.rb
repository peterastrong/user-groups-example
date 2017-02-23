class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: User.first.id)
    # lazy hack for current_user for the sake of example. don't do it this way in your project
  end
end
