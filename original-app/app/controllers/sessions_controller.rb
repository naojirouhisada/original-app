class SessionsController < ApplicationController
    
    def new
    end
    
    
    def create
       @user = User.find_by(email: params[:session][:email])
       if @user && @user.authenticate(params[:session][:password])
            session[:user] = @user.id
            flash[:info] = "ログインしました。"
            redirect_to @user
        else
            flash.now[:danger] ='メールアドレス/パスワードが間違っています。'
            render 'new'
        end
    end
    
    
 
    def logout
        reset_session 
        redirect_to '/'
    end
            
end
