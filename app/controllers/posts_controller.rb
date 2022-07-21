class PostsController < ApplicationController
  def index
    @user=User.includes(:posts, :comments).find(params[:user_id])
    @posts = User.find(params[:user_id]).recent_posts
  end

  def show
    author_id = params["user_id"]
    post_id = params["id"]
    @user = User.find(author_id)
    @post=User.includes(:posts, :comments).find(author_id).posts.find( post_id)
    @comments = @post.recent_comments
  end
end
