class Comment < ActiveRecord::Base
  belongs_to :micropost, dependent: :destroy
  belongs_to :user
end
