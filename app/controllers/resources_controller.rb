
class ResourcesController < ApplicationController

	def index
		@cct_manuals = Resource.by_category( 'cct' ).order( name: :asc )
		@tbi_manuals = Resource.by_category( 'tbi' ).order( name: :asc )
		@mild_manuals = Resource.by_category( 'mild' ).order( name: :asc )
		@addtnl_manuals = Resource.by_category( 'additional' ).order( name: :asc )
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
