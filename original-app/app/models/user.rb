class User < ActiveRecord::Base
    belongs_to :member,foreign_key: 'user_id'
end
