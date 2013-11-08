class PlaceAttr < ActiveRecord::Base
	attr_accessible :place_attr_type, :place_id, :value
	belongs_to :place_attr_type
	belongs_to :place
end
