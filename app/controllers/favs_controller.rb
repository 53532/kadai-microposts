class FavsController < ApplicationController
  before_action :require_user_logged_in
  def create
   # user = User.find(params[:user])
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに追加しました'
    redirect_to root_path
  end

  def destroy
    #user = User.find(params[:user_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りから削除しました'
    redirect_to root_path
  end
end
