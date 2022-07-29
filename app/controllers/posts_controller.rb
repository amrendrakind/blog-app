class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)

    respond_to do |format| 
      format.html
      format.json { render json: @posts } 
    end
  end

  def show
    @user = User.find(params[:user_id])
    @post = User.find(params[:user_id]).posts.find(params[:id])
    @comments = @post.recent_comments

    respond_to do |format| 
      format.html
      format.json { render json: @comments } 
    end
  
  end

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    parameters = post_params
    post = Post.new(author_id: params[:user_id], title: parameters[:title], text: parameters[:text],
                    comments_counter: 0, likes_counter: 0)
    post.save
    # post.update_posts_counter
    if post.save
      # puts "Saved successfully"
      redirect_to user_path(params[:user_id])
    else
      # puts "Failed to save"
      redirect_to new_user_post_path
    end
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    flash[:notice] = "Post ##{params[:id]} has been deleted"
    redirect_to user_posts_path(current_user)
  end
end
