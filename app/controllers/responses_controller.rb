class ResponsesController < ApplicationController


	def create
		# need a surveying
		# a screen
		# a prompt

		@question = Question.find_by( id: params[:question_id] )
		@surveying = Surveying.where( user: current_user ).last

		params[:prompt_id].each do |prompt_id, content|
			response = @question.responses.where( user_id: current_user.try( :id ), prompt_id: prompt_id ).first_or_initialize( surveying_id: @surveying.try( :id ) )
			response.update( content: content )
		end


		if @question.screen.next_screen.present?
			redirect_to @question.screen.next_screen 
		else
			redirect_to root_path
		end
	end


	private
		def response_params
			params.require( :response ).permit( :prompt_id, :content )
		end

end