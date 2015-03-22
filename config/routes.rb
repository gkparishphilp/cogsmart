Cogsmart::Application.routes.draw do


	authenticated :user do
		root to: "screens#index", as: :authenticated_root
	end

	root to: 'home#index'

	resources :admin, only: :index

	resources :bookmarks

	resources :contacts

	resources :questions do
		resources :responses
	end

	resources :resources

	resources :screens

	resources :tasks

	resources :people


	get 'about' => 'static#about', as: :about
	get 'faq' => 'static#faq', as: :faq

  get :send_calendar_email, to: 'screens#send_calendar_email', as: :send_calendar_email

	devise_scope :user do
		get '/login' => 'sessions#new', as: 'login'
		get '/logout' => 'sessions#destroy', as: 'logout'
		get '/register' => 'registrations#new', as: 'register'
	end


	devise_for :users, :controllers => { :registrations => 'registrations', :sessions => 'sessions' }



	get 'game/intro' => 'timed_trials#intro', as: 'intro_game'
	get 'game/play' => 'timed_trials#play', as: 'play_game'
	get 'game/summary' => 'timed_trials#summary', as: 'summarize_game'
	post 'game/post' => 'timed_trials#create', as: 'post_game'


	# quick catch-all route for static pages
	get '/:action', controller: 'static'

end
