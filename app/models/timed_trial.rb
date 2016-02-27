class TimedTrial < ActiveRecord::Base

	belongs_to :user

	def self.completed
		where.not( completed_at: nil )
	end
	
end