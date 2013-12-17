
class ManualsController < ApplicationController

	def index
		@manuals = Manual.all
	end

	def show
		@manual = Manual.friendly.find( params[:id] )
		redirect_to @manual.path
	end

end