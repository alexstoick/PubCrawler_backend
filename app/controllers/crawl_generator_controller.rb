class CrawlGeneratorController < ApplicationController

	def index

		pubs = Place.all

		starting_pub = pubs.sample(1)

		render json: { "pubs" => pubs , "start" => starting_pub }

	end

	def addPubs
		pubs = [
		   {
		      :pub_id => "1",
		      :pub_zone_id => "1",
		      :pub_name => "The Angel",
		      :pub_location_latitude => "51.515516",
		      :pub_location_longitude => "-0.127791"
		   },
		   {
		      :pub_id => "2",
		      :pub_zone_id => "1",
		      :pub_name => "Bear & Staff",
		      :pub_location_latitude => "51.510792",
		      :pub_location_longitude => "-0.128612"
		   },
		   {
		      :pub_id => "3",
		      :pub_zone_id => "1",
		      :pub_name => "Bloomsbury Tavern",
		      :pub_location_latitude => "51.516867",
		      :pub_location_longitude => "-0.125844"
		   },
		   {
		      :pub_id => "4",
		      :pub_zone_id => "1",
		      :pub_name => "Cambridge",
		      :pub_location_latitude => "51.513527",
		      :pub_location_longitude => "-0.129508"
		   },
		   {
		      :pub_id => "5",
		      :pub_zone_id => "1",
		      :pub_name => "Chandos",
		      :pub_location_latitude => "51.50957",
		      :pub_location_longitude => "-0.126815"
		   },
		   {
		      :pub_id => "6",
		      :pub_zone_id => "1",
		      :pub_name => "Coach & Horses",
		      :pub_location_latitude => "51.512549",
		      :pub_location_longitude => "-0.120914"
		   },
		   {
		      :pub_id => "7",
		      :pub_zone_id => "2",
		      :pub_name => "Cock & Woolpack",
		      :pub_location_latitude => "51.513642",
		      :pub_location_longitude => "-0.085863"
		   },
		   {
		      :pub_id => "8",
		      :pub_zone_id => "2",
		      :pub_name => "The Cross Keys",
		      :pub_location_latitude => "51.512747",
		      :pub_location_longitude => "-0.084729"
		   },
		   {
		      :pub_id => "9",
		      :pub_zone_id => "2",
		      :pub_name => "Elephant",
		      :pub_location_latitude => "51.511959",
		      :pub_location_longitude => "-0.081027"
		   },
		   {
		      :pub_id => "10",
		      :pub_zone_id => "2",
		      :pub_name => "The Peacock",
		      :pub_location_latitude => "51.511921",
		      :pub_location_longitude => "-0.075303"
		   },
		   {
		      :pub_id => "11",
		      :pub_zone_id => "2",
		      :pub_name => "Hennessy's",
		      :pub_location_latitude => "51.513223",
		      :pub_location_longitude => "-0.07661"
		   },
		   {
		      :pub_id => "12",
		      :pub_zone_id => "3",
		      :pub_name => "Castle",
		      :pub_location_latitude => "51.516715",
		      :pub_location_longitude => "-0.110338"
		   },
		   {
		      :pub_id => "13",
		      :pub_zone_id => "3",
		      :pub_name => "Harrow",
		      :pub_location_latitude => "51.512844",
		      :pub_location_longitude => "-0.106782"
		   },
		   {
		      :pub_id => "14",
		      :pub_zone_id => "3",
		      :pub_name => "The Hoop & Grapes",
		      :pub_location_latitude => "51.515433",
		      :pub_location_longitude => "-0.104824"
		   },
		   {
		      :pub_id => "15",
		      :pub_zone_id => "3",
		      :pub_name => "Punch Tavern",
		      :pub_location_latitude => "51.514066",
		      :pub_location_longitude => "-0.104861"
		   },
		   {
		      :pub_id => "16",
		      :pub_zone_id => "3",
		      :pub_name => "Vintry",
		      :pub_location_latitude => "51.51157",
		      :pub_location_longitude => "-0.088532"
		   },
		   {
		      :pub_id => "17",
		      :pub_zone_id => "4",
		      :pub_name => "Dirty Dicks",
		      :pub_location_latitude => "51.517998",
		      :pub_location_longitude => "-0.079638"
		   },
		   {
		      :pub_id => "18",
		      :pub_zone_id => "4",
		      :pub_name => "The Globe",
		      :pub_location_latitude => "51.517566",
		      :pub_location_longitude => "-0.088827"
		   },
		   {
		      :pub_id => "19",
		      :pub_zone_id => "4",
		      :pub_name => "The Master Gunner",
		      :pub_location_latitude => "51.521658",
		      :pub_location_longitude => "-0.08721"
		   },
		   {
		      :pub_id => "20",
		      :pub_zone_id => "4",
		      :pub_name => "Red Lion",
		      :pub_location_latitude => "51.518789",
		      :pub_location_longitude => "-0.085997"
		   },
		   {
		      :pub_id => "22",
		      :pub_zone_id => "4",
		      :pub_name => "The White Hart",
		      :pub_location_latitude => "51.516865",
		      :pub_location_longitude => "-0.081416"
		   },
		   {
		      :pub_id => "23",
		      :pub_zone_id => "5",
		      :pub_name => "The Apple Tree",
		      :pub_location_latitude => "51.523479",
		      :pub_location_longitude => "-0.112074"
		   },
		   {
		      :pub_id => "24",
		      :pub_zone_id => "5",
		      :pub_name => "The Lamp",
		      :pub_location_latitude => "51.52304",
		      :pub_location_longitude => "-0.119053"
		   },
		   {
		      :pub_id => "25",
		      :pub_zone_id => "5",
		      :pub_name => "Old Nick",
		      :pub_location_latitude => "51.519058",
		      :pub_location_longitude => "-0.116282"
		   },
		   {
		      :pub_id => "26",
		      :pub_zone_id => "5",
		      :pub_name => "Rugby Tavern",
		      :pub_location_latitude => "51.52198",
		      :pub_location_longitude => "-0.117398"
		   },
		   {
		      :pub_id => "27",
		      :pub_zone_id => "5",
		      :pub_name => "College Arms",
		      :pub_location_latitude => "51.519786",
		      :pub_location_longitude => "-0.131828"
		   }
		]

		pubs.each do |pub|
			place = Place.new
			place.name = pub [:pub_name]
			place.latitude = pub [:pub_location_latitude]
			place.longitude = pub [:pub_location_longitude]
			place.rating = 3
			place.save!
		end
   end


end
