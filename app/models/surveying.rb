class Surveying < ActiveRecord::Base

	belongs_to	:user
	belongs_to 	:last_screen, class_name: 'Screen'

	has_many	:responses
	
end