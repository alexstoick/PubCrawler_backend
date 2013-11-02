class UserAttrTypeController < ApplicationController
	def index
		@attributes = UserAttrType.all()
	end

	def create
		name = params[:name]
		attribute = UserAttrType.new()
		attribute.name = name

		attribute.save!

		render json: {"attribute"=>attribute}
	end
end