class CommentsController < ApplicationController
     before_action :logged_in_user 
    
    def create
        @micropost = Micropost.find(params[:micropost_id])
        @comment = current_user.comments.build(comment_params)
        @comment.micropost = @micropost
        if @comment.save  
            flash[:success] = "created comment!"
            redirect_to root_path
        else
            render 'static_pages/home'
        end
    end
    
    private
    
    def comment_params
        params.require(:comment).permit(:content)
    end
end
