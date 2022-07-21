class PostsController < ApplicationController
  def index
    @user = User.includes(:comments).find(params[:user_id])
    @posts = User.find(params[:user_id]).recent_posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = User.includes(:posts, :comments).find(params[:user_id]).posts.find(params[:id])
    @comments = @post.recent_comments
  end
end
