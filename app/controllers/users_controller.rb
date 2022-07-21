class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.includes(:posts).find(params[:id])
    @posts = User.find(params[:id]).recent_posts
  end
end
