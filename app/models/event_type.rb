class EventType < ActiveRecord::Base
	attr_accessible :description
	has_many :event
end
