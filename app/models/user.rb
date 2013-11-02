class User < ActiveRecord::Base
  attr_accessible :name, :email, :username, :password
  has_many :user_attr
end
