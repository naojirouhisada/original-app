class CommentsController < ApplicationController
     before_action :logged_in_user 
    
    def create
        @user = User.find(params[:user_id])
        @micropost = Micropost.find(params[:micropost_id])
        @comment = current_user.comments.build(comment_params)
        @comment.micropost = @micropost
   
        if @comment.save
            @succeed = true
            
        else
            flash[:danger] = 'missing'
        end
    
    end
    
    private
    
    def comment_params
        params.require(:comment).permit(:content)
    end
end
