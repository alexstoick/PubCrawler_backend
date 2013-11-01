PubCrawlBackend::Application.routes.draw do

	match 'user/', :to => "user#index" , :via => :get
end
