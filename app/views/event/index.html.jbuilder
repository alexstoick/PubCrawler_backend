json.events @events.each do |event|
	json.type event.event_type.description
	json.modifier_type event.event_modifier.description
	json.modifier_value event.event_modifier_value
end