class User < ActiveRecord::Base
  attr_accessible :name, :email, :username, :password
end
