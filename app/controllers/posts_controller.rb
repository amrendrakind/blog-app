class PostsController < ApplicationController
  def index
    user_info = User.find(params[:user_id])
    @posts = user_info.posts.all
  end

  def show
    user_info = User.find(params[:user_id])
    puts params
    @post = user_info.posts.find(params[:id])
  end
end
