PubCrawlBackend::Application.routes.draw do

	match 'user/', :to => "user#index" , :via => :get
	match 'user/', :to => "user#create", :via => :post
	match 'user/:id/' , :to => "user#view", :via => :get
	match 'user/:id/:attr_id', :to => "user_attr#create" , :via => :post
	match 'attr_types/', :to => "user_attr_type#index", :via => :get
	match 'attr_types/', :to => "user_attr_type#create" , :via => :post
end
