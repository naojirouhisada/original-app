class Corporation::CompaniesController < ApplicationController
    
    def new
        @company = Company.new
        # render 'form'
       
    end
    
    def create_table
        @company = Company.new(company_params)
        
        if @company.save
            flash.notice '登録完了しました。'
            redirect_to '/root'
        else
            render action 'new'
        end
    end
    
    private
    
    def company_params
        params.require(:company).permit(:name,:establishment,:description,:industry,:type_of_industry,
            :site_name,:country,:prefecture,:city,:town_area,:address,:building,:room)
    end
end
