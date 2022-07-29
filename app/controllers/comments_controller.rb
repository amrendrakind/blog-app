class CommentsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @post = User.find(params[:user_id]).posts.find(params[:post_id])
    @comments = @post.recent_comments

  end

  def create

      parameters = comment_params
      print "Comment"
      puts comment_params
      respond_to do |format|
          
          format.json {
            comment = Comment.new(post_id: params[:post_id], author_id: params[:user_id], text: params[:text])
            comment.save
           }
          format.html {
            print "current user "
            puts current_user.id
            comment = Comment.new(post_id: params[:post_id], author_id: current_user.id, text: parameters[:text])
            comment.save
            if comment.save
              redirect_to user_post_path(id: params[:post_id])
            else
              redirect_to new_user_post_comment
            end
        }
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
