Cogsmart::Application.routes.draw do

	root to: 'home#index'

	resources :manuals

	get 'about' => 'static#about', as: :about
	get 'faq' => 'static#faq', as: :faq
	get 'resources' => 'static#resources', as: :resources


	devise_scope :user do
		get '/login' => 'sessions#new', as: 'login'
		get '/logout' => 'sessions#destroy', as: 'logout'
		get '/register' => 'registrations#new', as: 'register'
	end


	devise_for :users, :controllers => { :registrations => 'registrations', :sessions => 'sessions' }

	# quick catch-all route for static pages
	get '/:action', controller: 'static'

end
