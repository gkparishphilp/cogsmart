class TimedTrialsController < ApplicationController

	before_filter :authenticate_user!

	SEQUENCE = 'pxqmdikrwtwya'

	def create
		@trial = current_user.timed_trials.find_by( id: params[:trial_id] )
		if params[:sequence] == SEQUENCE
			duration = Time.zone.now - @trial.started_at
			@trial.update( completed_at: Time.zone.now, duration: duration )
			if current_user.timed_trials.completed.count < 3
				redirect_to intro_game_path( trial_id: @trial.id )
				return false
			else
				redirect_to summarize_game_path
				return false
			end
		else
			duration = Time.zone.now - @trial.started_at
			@trial.update( duration: duration )
			set_flash "The letters don't match, keep going!", :warning
			redirect_to play_game_path( trial_id: @trial.id )
			return false
		end
	end

	def intro
		@trial = current_user.timed_trials.find_by( id: params[:trial_id] )
	end

	def play
		
		@sequence = SEQUENCE
		@trial = current_user.timed_trials.find_by( id: params[:trial_id] ) || current_user.timed_trials.create( started_at: Time.zone.now )

	end

	def summary
		@trials = current_user.timed_trials.order( created_at: :desc ).limit( 3 ).reverse
	end

end