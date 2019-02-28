class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_fikkiwers = user.followers.count
  
  end
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_micrposts = user.microposts.count
  end
end
