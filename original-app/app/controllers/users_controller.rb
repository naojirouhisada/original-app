class UsersController < ApplicationController
    before_action :set_user, only: [:show , :edit , :update ]
    
    def show
    end
    
    def new
        @user = User.new
        @user.build_member
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
    
    def edit
    end
    
    def update
        if @user.update(user_params)
            redirect_to root_path , notice: '基本情報を更新しました。'
        else
            render 'edit'
        end
    end
    
    private
    
    def set_user
        @user = User.find(params[:id])
    end
    
    def user_params
        params.require(:user).permit(:first_kanji,:last_kanji,:first_kana,:last_kana,:first_name , 
            :last_name , :gender , :birth , :password , :password_confirmation, :email , :work_place , 
            :high_school , :university , :graduate_school,
            member_attributes:[:id,:country,:prefecture,:city,:town_area,:address,:building,:room,:datetime,]
        )
    end
    
   
end
