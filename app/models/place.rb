class Place < ActiveRecord::Base
	attr_accessible :latitude, :longitude, :name, :rating
	has_many :place_attr
	has_many :place_rating_entry
	has_many :event
end
