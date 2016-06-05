class Comment < ActiveRecord::Base
  belongs_to :micropost, dependent: :destroy
  belongs_to :user
  has_many :replays
end
