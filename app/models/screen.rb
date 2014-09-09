class Screen < ActiveRecord::Base

	belongs_to	:strategy
	belongs_to 	:category

	has_many	:questions


	# validates	:content, uniqueness: true


	def next_screen
		Screen.find_by( seq: self.seq + 1 )
	end

	def previous_screen
		Screen.find_by( seq: self.seq - 1 )
	end

end