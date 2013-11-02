json.name @user.name
json.username @user.username
json.attributes @user.user_attr do |attribute|
	json.type attribute.user_attr_type.name
	json.value attribute.value
end