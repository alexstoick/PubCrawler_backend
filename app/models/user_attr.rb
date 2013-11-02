class UserAttr < ActiveRecord::Base
  attr_accessible :value , :user_id , :user_attr_type_id
  belongs_to :user
  belongs_to :user_attr_type
end
