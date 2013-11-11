class EventController < ApplicationController
	def index

		@events = Event.all

	end

	def create

		

		render json: { "success" => false }
	end
end
