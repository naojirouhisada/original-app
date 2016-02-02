class User < ActiveRecord::Base
   
    has_one :member
    has_many :microposts
    has_many :comments
    
    has_many :following_relationships, class_name: "Relationship" , foreign_key: "follow_id" , dependent: :destroy
    has_many :following_users , through: :following_relationships , source: :followed
    
    has_many :follower_relationships, class_name: "Relationship" , foreign_key: "followed_id",dependent: :destroy
    has_many :follower_users, through: :follower_relationships , source: :follow
    
    
    
    has_secure_password
    
    accepts_nested_attributes_for :member

    def follow(other_user ,status)
       
        following_relationships.create(followed_id: other_user.id , status: status.status)
        
        
    end
    
    def unfollow(other_user)
         
        following_relationships.find_by(followed_id: other_user.id).destroy
    end
    
    def following?(other_user)
        following_users.include?(other_user)
    end
    
    
end
