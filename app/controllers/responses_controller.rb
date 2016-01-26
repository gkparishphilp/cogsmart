class ResponsesController < ApplicationController

	def create
		# need a surveying
		# a screen
		# a prompt

		@question = Question.find_by( id: params[:question_id] )
		@surveying = Surveying.where( user: current_user ).last

    	@question.responses.where(user: current_user).destroy_all

		if params[:prompt_id]
			params[:prompt_id].each do |prompt_id, content|
        prompt = Prompt.find(prompt_id)
        if prompt.prompt_type == "radio" || prompt.prompt_type == "checkbox"
          content = prompt.content
        elsif prompt.prompt_type == "text_field" || prompt.prompt_type == "text_area"
          content = content
        end
        @question.responses.create!(user: current_user, prompt: prompt, content: content, surveying_id: @surveying.try(:id))
			
        	if prompt.present? && prompt.correct?
				set_flash "Correct!"
			end
			end
		end


		if @question.screen.next_screen.present?
			redirect_to screen_path( id: @question.screen.next_screen.seq )
		else
			redirect_to root_path
		end
	end


	private
		def response_params
			params.require( :response ).permit( :prompt_id, :content )
		end

end
