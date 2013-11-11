PubCrawlBackend::Application.routes.draw do

  get "place/index"

	match 'user/', :to => "user#index" , :via => :get
	match 'user/', :to => "user#create", :via => :post
	match 'user/attr_types/', :to => "user_attr_type#index", :via => :get
	match 'user/attr_types/', :to => "user_attr_type#create" , :via => :post
	match 'user/:id/' , :to => "user#view", :via => :get
	match 'user/:id/:attr_id', :to => "user_attr#create" , :via => :post

	match 'place/', :to => "place#index" , :via => :get
	match 'place', :to => "place#create" , :via => :post

	match 'event/', :to => "event#index", :via => :get
	match 'event/', :to => "event#create", :via => :post

	match 'generate/' , :to => "crawl_generator#index", :via => :get
end
