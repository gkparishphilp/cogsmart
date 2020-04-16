
class ResourcesController < ApplicationController

	def index
		@cct_manuals = Resource.by_category( 'cct' )
		@tbi_manuals = Resource.by_category( 'tbi' )
		@mild_manuals = Resource.by_category( 'mild' )
		@addtnl_manuals = Resource.by_category( 'additional' )
	end

	def show
		@manual = Resource.friendly.find( params[:id] )
		if @manual.require_email?
			set_flash 'Please enter your email address to continue'
			redirect_to new_contact_path( manual_id: @manual.id )
		else
			redirect_to @manual.path
		end
	end

end
