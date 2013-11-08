class PlaceRatingEntry < ActiveRecord::Base
  attr_accessible :comment, :place_id, :rating, :user_id
  belongs_to :place
end
