class MicropostsController < ApplicationController
    before_action :logged_in_user , only: [:create]
    
    def create
        @micropost = current_user.microposts.build(micropost_params)
        if @micropost.save
            flash[:success]  = "記事を投稿しました。"
            redirect_to root_path
        else
            render 'static_pages/home'
        end
    end
    
    private
    
    def micropost_params
        params.require(:micropost).permit(:content)
    end
end
