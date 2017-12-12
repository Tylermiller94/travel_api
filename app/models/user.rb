class User < ActiveRecord::Base
  validates :name, :email, :username, :presence => true
end
