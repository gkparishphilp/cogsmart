Cogsmart::Application.routes.draw do

	root to: 'home#index'

	get 'about' => 'static#about', as: :about
	get 'faq' => 'static#faq', as: :faq




end
