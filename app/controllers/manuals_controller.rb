
class ManualsController < ApplicationController

	def index
		@manuals = Manual.all
	end

	def show
		@manual = Manual.friendly.find( params[:id] )
		if @manual.require_email?
			set_flash 'Please Enter your email to continue'
			redirect_to new_contact_path( manual_id: @manual.id )
		else
			redirect_to @manual.path
		end
	end

end