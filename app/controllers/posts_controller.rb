class PostsController < ApplicationController
  def index
    @user=User.includes(:posts, :comments).find(params[:user_id])
  end

  def show
    author_id = params["user_id"]
    post_id = params["id"]

    @post=User.includes(:posts, :comments).find(author_id).posts.find( post_id)

  end
end
