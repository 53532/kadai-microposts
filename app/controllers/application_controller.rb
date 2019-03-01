class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_favorites = user.add_favs.count
  
  end
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
