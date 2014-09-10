class TimedTrialsController < ApplicationController

	before_filter :authenticate_user!

	SEQUENCE = 'pxqmdikrwtwya'

	def create
		@trial = current_user.timed_trials.find_by( id: params[:trial_id] )
		if params[:sequence] == SEQUENCE
			duration = Time.zone.now - @trial.started_at
			@trial.update( completed_at: Time.zone.now, duration: duration )
			if current_user.timed_trials.count < 3
				redirect_to intro_game_path( trial_id: @trial.id )
				return false
			else
				redirect_to summarize_game_path
				return false
			end
		else
			set_flash "The letters don't match, keep going!", :warning
			redirect_to :back
			return false
		end
	end

	def intro
		@trial = current_user.timed_trials.find_by( id: params[:trial_id] )
	end

	def play
		# if user.trial_count < 3 show form
		# else show summary
		@sequence = SEQUENCE
		@trial = current_user.timed_trials.create( started_at: Time.zone.now )

	end

	def summary
		
	end

end