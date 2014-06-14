class ScreensController < ApplicationController


	def show
		@screen = Screen.find( params[:id] )
		if @current_surveying.present?
			@current_surveying.update last_screen_id: @screen.id 
		end
	end

	
end