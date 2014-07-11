Cogsmart::Application.routes.draw do

	root to: 'home#index'

	resources :contacts

	resources :questions do 
		resources :responses
	end
	
	resources :resources

	resources :screens

	

	get 'about' => 'static#about', as: :about
	get 'faq' => 'static#faq', as: :faq


	devise_scope :user do
		get '/login' => 'sessions#new', as: 'login'
		get '/logout' => 'sessions#destroy', as: 'logout'
		get '/register' => 'registrations#new', as: 'register'
	end


	devise_for :users, :controllers => { :registrations => 'registrations', :sessions => 'sessions' }

	# quick catch-all route for static pages
	get '/:action', controller: 'static'

end
