class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    # puts params
    @user = User.includes(:posts).find(params[:user_id])
    @posts = User.find(params[:user_id]).recent_posts
  end
end
