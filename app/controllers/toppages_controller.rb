class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build #form_for用
      @micropost = current_user.microposts.order('created_at DESC').page(params[:page])
    end
  end
end
