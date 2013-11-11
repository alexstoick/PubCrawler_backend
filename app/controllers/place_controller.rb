class PlaceController < ApplicationController
	def index

		@places = Place.all

	end

	def create

		latitude = params[:latitude]
		longitude = params[:longitude]
		name = params[:name]


		if ( latitude.nil? || name.nil? || longitude.nil? )
			render json: {"error" => "Wrong params"} , :status => :bad_request
			return
		end
		#will have to compute rating..
		place = Place.new
		place.latitude = latitude
		place.longitude = longitude
		place.name = name

		place.save!

		render json: { "success" => true }
	end

	
end
