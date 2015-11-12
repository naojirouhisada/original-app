class User < ActiveRecord::Base
    belongs_to :member
    
    has_secure_password
    
end
