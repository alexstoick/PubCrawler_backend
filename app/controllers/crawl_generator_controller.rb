class CrawlGeneratorController < ApplicationController

	def index

		pubs = Place.all

		current_pub = pubs.delete pubs.sample

		limit = 5

		selected_pubs = []
		object = {}
		object [:name] = current_pub[:name]
		object [:latitude] = current_pub [:latitude]
		object [:longitude] = current_pub[:longitude]
		selected_pubs.push ( object )

		for i in 0..5 do

			min_distance = 10000000
			current_pub = nil
			pubs.each do |pub|

				distance = view_context.computeDistance( selected_pubs.last , pub )
				if ( distance < min_distance )
					current_pub = pub
					min_distance = distance
				end
			end

			object = {}
			object [:name] = current_pub[:name]
			object [:latitude] = current_pub [:latitude]
			object [:longitude] = current_pub[:longitude]
			object [:distance] = min_distance
			selected_pubs.push ( object )
			pubs.delete current_pub

			limit = limit - 1
		end

		render json: { "pubs" => selected_pubs }

	end

end
