class CommentsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @post = User.find(params[:user_id]).posts.find(params[:post_id])
    @comments = @post.recent_comments

  end

  def create
    if request.format =='json'
      information = request.raw_post 
      data_parsed = JSON.parse(information)
      Comment.new(post_id: params[:post_id], author_id: current_user.id, text: data_parsed['text'])
    else
      parameters = comment_params
      comment = Comment.new(post_id: params[:post_id], author_id: current_user.id, text: parameters[:text])
      comment.save

      if comment.save
        redirect_to user_post_path(id: params[:post_id])
      else
        redirect_to new_user_post_comment
      end
    end
  end

  def comment_params
    params.require(:comment).permit(:text)
  end

  def destroy
    puts params
    comment = Comment.find(params[:id])
    comment.destroy
    flash[:notice] = "Comment ##{params[:id]} has been deleted"
    redirect_back(fallback_location: root_path)
  end
end
