class RelationshipsController < ApplicationController
    before_action :logged_in_user
    
    def create
  
        @user = User.find(params[:followed_id])
        @status = Relationship.new(relationship_params)
        current_user.follow(@user , @status)
         
    end
    
    def destroy
        @user = current_user.following_relationships.find(params[:id]).followed
        current_user.unfollow(@user)
    end
    
    private
    
    def relationship_params
        params.require(:relationship).permit(:status)
    end

end
