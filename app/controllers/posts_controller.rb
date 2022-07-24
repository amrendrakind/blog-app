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

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    parameters = post_params
    post = Post.new(author_id: current_user.id, title: parameters[:title], text: parameters[:text], comments_counter: 0,
                    likes_counter: 0)
    post.save
    # post.update_posts_counter
    if post.save
      # puts "Saved successfully"
      redirect_to user_path(current_user)
    else
      # puts "Failed to save"
      redirect_to new_user_post_path
    end
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
