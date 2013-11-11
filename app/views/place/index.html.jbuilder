json.array! @places do |place|

	json.name place.name
	json.latitude place.latitude
	json.longitude place.longitude
	json.rating place.rating
	json.rating_entries place.place_rating_entry do |entry|
		json.user_id entry.user_id
		json.rating entry.rating
		json.comment entry.comment
	end

	json.attributes place.place_attr do |attr|
		json.type attr.place_attr_type.name
		json.value attr.value
	end

	json.events place.event do |event|
		json.type event.event_type.description
		json.modifier_description event.event_modifier.description
		json.modifier_value event.event_modifier_value
	end

end