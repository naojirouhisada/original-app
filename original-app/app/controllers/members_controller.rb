class MembersController < ApplicationController
    skip_before_action :check_logined
    def new
        @member = Member.new
    end
    
    def create
        @member = Member.new(member_params)
        if @member.save
            redirect_to @member
        else
            render 'new'
        end
    end
    
    private
    
    def member_params
        params.require(:member).permit(:country,:prefecture,:city,:town_area,:address,:building,:room,:datetime)
    end
end
