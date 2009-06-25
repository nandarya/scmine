class User < ActiveRecord::Base
  has_many :articles
  
  acts_as_authentic
end
