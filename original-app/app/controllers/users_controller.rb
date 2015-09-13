class UsersController < ApplicationController
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
  end
  
  private 
  
  def user_params
    params.require(:user).permit(
      :first_kanji , :last_kanji , :first_kanamoji , :last_kanamoji , :first_name,
      :last_name , :high_school , :university , :work_for , :email , :email_confirmation,
      :country , :postal_code , :prefecture , :municipality_address , :br_name , :phone_number,
      :telephone_number , :password, :password_confirmation
      )
  end
end
