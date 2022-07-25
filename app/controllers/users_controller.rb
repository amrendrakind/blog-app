class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    # puts params
    @user = User.includes(posts: [:comments]).find(params[:id])
    @posts = @user.recent_posts
  end
end
