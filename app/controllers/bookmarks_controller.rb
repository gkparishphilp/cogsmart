class BookmarksController < ApplicationController

	def create
		@bookmark = Bookmark.new( bookmark_params )
		@bookmark.user = current_user

		if @bookmark.save
			set_flash "Bookmark added!"
		else
			set_flash "Bookmark could not be saved", :warning
		end
		redirect_to :back
	end


	private
		def bookmark_params
			params.require( :bookmark ).permit( :screen_id )
		end

end