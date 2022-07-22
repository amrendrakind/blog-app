class CommentsController < ApplicationController

    def new
      @comments = Comments.new
      @user = current_user
    end
  
    def create
      parameters= comment_params
      comment = Comment.new(post_id: parameters[:postid], author_id: current_user.id, text: parameters[:text] )
      comment.save
      comment.update_comments_counter

      if comment.save
        puts "Commented successfully"
    #     redirect_to user_path(current_user)
    #   else
    #     puts "Failed to save"
    #     redirect_to new_user_post_path
      end
    
    end 
  
    def comment_params
        params.require(:comment).permit(:text)
      end
  
  end
  