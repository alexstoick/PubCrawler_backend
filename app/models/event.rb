class Event < ActiveRecord::Base
	attr_accessible :event_modifier_id, :event_modifier_value, :event_type_id, :place_id
	belongs_to :event_modifier
	belongs_to :event_type
	belongs_to :place
end
