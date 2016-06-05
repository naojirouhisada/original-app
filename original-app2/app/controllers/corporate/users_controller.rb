class Corporate::UsersController < ApplicationController
    
    def new
        @user = Corporate::User.new
    end
    
    def create
        @user = Corporate::User.new(user_params)
        
        if @user.save
            flash.notice = 'successfuly user!!'
            redirect_to :corporate_users
        else
            render 'new'
        end
    end
    
    private
    
    def user_params
        params.require(:corporate_user).permit(:login_id,:password , :password_confirmation,:first_name,:last_name,:email,:status)
    end
end
