class User::RelationshipsController < ApplicationController
    before_action :logged_in_user
    
    def create
       
        @user = User.find(params[:followed_id])
        @status = Relationship.new(relationship_params)
        current_user.follow(@user , @status)
         
    end
    
    def destroy
        
        if current_user.following_relationships.exists?(params[:id])
            if User.exists?(current_user.following_relationships.find(params[:id]).followed)
                @user = current_user.following_relationships.find(params[:id]).followed
                current_user.unfollow(@user)
            end
        else current_user.follower_relationships.exists?(params[:id])
            if User.exists?(current_user.follower_relationships.find(params[:id]).follow)
                @user = current_user.follower_relationships.find(params[:id]).follow
                current_user.unfollow(@user)
            end
        end

        
    end
    
    def edit
        
    end
    
   
    def update
        
        @follower_relationship = Relationship.find(params[:id])
        
        @succeed = false

        
        if @follower_relationship.update(status: 1)

          
            @succeed = true
        else
            flash[:danger] = 'missing'
        end
    end
    
    private
    
    def relationship_params
        params.require(:relationship).permit(:status)
    end

end
