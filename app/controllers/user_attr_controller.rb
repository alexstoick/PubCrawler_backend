class UserAttrController < ApplicationController
	def index
		render json: {"c" => "b"}
	end

	def create

		# TODO : Validate the parameters

		user_id = params[:id]
		attr_id = params[:attr_id]
		value = params[:value]

		userAttr = UserAttr.new()
		userAttr.user_id = user_id
		userAttr.value = value
		userAttr.user_attr_type_id = attr_id

		userAttr.save!
		render json: { "user" => userAttr }

	end
end