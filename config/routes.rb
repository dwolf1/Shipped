Rails.application.routes.draw do
  devise_for :users
  resources :boats do
  resources :jobs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	# Boat Routes
	get    '/boats' 	 	  	=> 'boats#index'
	get    '/boats/new' 	  	=> 'boats#new'
	post   '/boats' 		  	=> 'boats#create'
	get    '/boats/:id' 	  	=> 'boats#show'
	get    '/boats/:id/edit' 	=> 'boats#edit'
	put    '/boats/:id'	  		=> 'boats#update'
	patch  '/boats/:id'	  		=> 'boats#update'
	delete '/boats/:id' 	  	=> 'boats#destroy'

	# Job Routes
	get    '/jobs' 	 	  	=> 'jobs#index'
	get    '/jobs/new' 	  	=> 'jobs#new'
	post   '/jobs' 		  	=> 'jobs#create'
	get    '/jobs/:id' 	  	=> 'jobs#show'
	get    '/jobs/:id/edit' => 'jobs#edit'
	put    '/jobs/:id'	  	=> 'jobs#update'
	patch  '/jobs/:id'		=> 'jobs#update'
	delete '/jobs/:id' 	  	=> 'jobs#destroy'
end
