class MicropostsController < ApplicationController
    before_action :logged_in_user , only: [:create]

    def create
        @micropost = current_user.microposts.build(micropost_params)
        
        @user = @micropost.user

        if @micropost.save
            
            flash[:success]  = "created micropost!"
            redirect_to root_path
        else
            render 'static_pages/home'
        end
    end
    
    def destroy
        @micropost = current_user.microposts.find_by(id: params[:id] )
        return redirect_to root_url if @micropost.nil?
        @micropost.destroy
        flash[:success] = "削除しました。"
        redirect_to request.referrer || root_url
    end
    
    private
    
    def micropost_params
        params.require(:micropost).permit(:content)
    end
end
