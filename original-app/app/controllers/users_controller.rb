class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Original App"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    if @user.update(user_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice: 'Profileを編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
    
  
  private 
  
  def user_params
    params.require(:user).permit(
      :first_kanji , :last_kanji , :first_kanamoji , :last_kanamoji , :first_name,
      :last_name , :high_school , :university , :work_for , :email , :email_confirmation,
      :country , :postal_code , :prefecture , :municipality,:town_area_address , :br_name , :phone_number,
      :telephone_number , :password, :password_confirmation
      )
  end
  
   def set_user
    @user = User.find(params[:id])
  end
end
