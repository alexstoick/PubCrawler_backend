class UserController < ApplicationController

	def index
		@users = User.all
	end

	def create
		name = params[:name]
		email = params[:email]
		password = params[:password]
		username = params[:username]

		user = User.new()
		user.name = name
		user.email = email
		user.password = password
		user.username = username

		user.save!

		render json: { "user_id" => user.id }
	end

	def view
		@user = User.find( params[:id] )
	end
end
