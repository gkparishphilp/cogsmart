Cogsmart::Application.routes.draw do

	root to: 'home#index'

	resources :manuals

	get 'about' => 'static#about', as: :about
	get 'faq' => 'static#faq', as: :faq
	get 'resources' => 'static#resources', as: :resources


	# quick catch-all route for static pages
	get '/:action', controller: 'static'

end
