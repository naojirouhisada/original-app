class User::ReplaysController < ApplicationController
    
    def create
      
        
        
        
        @userId = session[:other_user_id]
        @micropostIds = Micropost.where(user_id: @userId).select(:id)
        @CommentIds = Comment.where(micropost_id: @micropostIds.ids).select(:id)
        if (@CommentIds.ids.include?(params[:replay][:comment_id].to_i))
            @replay = current_user.replays.build(replay_params)
            # require 'pry'
             #binding.pry
            @comment = Comment.find_by(id:params[:replay][:comment_id])
            @replay.comment = @comment
        else
            flash[:danger] = "You don't have permition"
        end

        if @replay.save
            @succeed = true
        else
            flash[:danger] = 'missing'
        end
    end
    
    private
    
    def replay_params
        params.require(:replay).permit(:content)
    end
end
