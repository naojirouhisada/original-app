class MembersController < ApplicationController
  
    def new
         @member = Member.new
    end
    
    def create
        @member = Member.new(member_params)
        if @member.save
            
            redirect_to user_path
        else
            render 'new'
        end
    end
    
    private
    
    def member_params
        params.require(:member).permit(:country,:prefecture,:city,:town_area,
            :address,:building,:room,:datetime,
        )
    end
end
