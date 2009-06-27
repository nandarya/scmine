class User < ActiveRecord::Base
  has_many :articles
  has_many :replays
  
  acts_as_authentic
end
