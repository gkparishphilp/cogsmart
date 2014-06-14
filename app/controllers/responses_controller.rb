class ResponsesController < ApplicationController


	def create
		# need a surveying
		# a screen
		# a prompt
		@screen = Screen.find_by( id: params[:screen_id] )
		#@response = @screen.responses.where( user_id: current_user.try( :id ) ).first_or_initialize
		
		@response = @screen.responses.new( response_params )

		@response.content = @response.try( :prompt ).try( :content )

		if @screen.next_screen.present?
			redirect_to @screen.next_screen 
		else
			redirect_to root_path
		end
	end


	private
		def response_params
			params.require( :response ).permit( :prompt_id, :content )
		end

end