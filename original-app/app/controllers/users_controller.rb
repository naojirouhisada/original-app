class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        
        if @user.save
            flash[:success] = "新規登録が完了しました。"
            redirect_to @user
        else
            render 'new'
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:first_kanji,:last_kanji,:first_kana,:last_kana,:first_name , 
        :last_name , :gender , :birth , :password , :email , :work_place , :high_school , :university , 
        :graduate_school )
    end
end
