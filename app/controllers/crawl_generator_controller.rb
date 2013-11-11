class CrawlGeneratorController < ApplicationController

	def index

		pubs = Place.all

		current_pub = pubs.delete pubs.sample

		limit = 5

		selected_pubs = []
		object = {}
		object [:name] = current_pub[:name]
		object [:latitude] = current_pub [:latitude].to_f
		object [:longitude] = current_pub[:longitude].to_f
		object [:distance] = 0.0
		selected_pubs.push ( object )

		for i in 0..3 do

			pubs.shuffle!
			min_distance = 10000000
			current_pub = nil

			l = (limit-i)/7.0

			pubs.each do |pub|

				object = {}
				object [:name] = pub[:name]
				object [:latitude] = pub[:latitude].to_f
				object [:longitude] = pub[:longitude].to_f
				distance = view_context.computeDistance( selected_pubs.last , object )

				# puts pub[:name] + " " + selected_pubs.last[:name] + " " + distance.to_s
				puts distance
				if ( distance < min_distance && l < distance )
					current_pub = pub
					min_distance = distance
				end

			end

			if ( current_pub.nil? )
				pub = pubs.delete pubs.sample
				object = {}
				object [:name] = pub[:name]
				object [:latitude] = pub[:latitude].to_f
				object [:longitude] = pub[:longitude].to_f
				distance = view_context.computeDistance( selected_pubs.last , object )
				object [:distance] = distance
				selected_pubs.push ( object )
			else
				object = {}
				object [:name] = current_pub[:name]
				object [:latitude] = current_pub [:latitude].to_f
				object [:longitude] = current_pub[:longitude].to_f
				object [:distance] = min_distance
				selected_pubs.push ( object )
				pubs.delete current_pub
			end

		end

		render json: { "pubs" => selected_pubs }

	end

end
