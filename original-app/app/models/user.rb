class User < ActiveRecord::Base
    has_one :member
    has_many :microposts
    has_secure_password
    
    accepts_nested_attributes_for :member
    
    
end
