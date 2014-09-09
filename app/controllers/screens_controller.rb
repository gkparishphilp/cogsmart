class ScreensController < ApplicationController

	before_filter :authenticate_user!

	def index
		@surveying = Surveying.where( user: current_user ).first_or_initialize
		@surveying.last_screen ||= Screen.first
		@surveying.save
		redirect_to screen_path( @surveying.last_screen )
	end

	def show
		# todo create surveying.....
		@surveying = Surveying.where( user: current_user ).first
		
		@screen = Screen.find( params[:id] )
		if @surveying.present?
			@surveying.update last_screen_id: @screen.id 
		end
	end

	
end