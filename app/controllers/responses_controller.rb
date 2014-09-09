class ResponsesController < ApplicationController


	def create
		# need a surveying
		# a screen
		# a prompt
		df
		@question = Question.find_by( id: params[:question_id] )
		
		if params[:content].present?
			params[:content].each do |content|
				@question.responses.where( user_id: current_user.try( :id ) ).create( content: content )
			end
		elsif content = Prompt.find_by( id: params[:prompt_id] ).try( :content )
			@response = @question.responses.where( user_id: current_user.try( :id ) ).first_or_initialize
			@response.content = content
			@response.save
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