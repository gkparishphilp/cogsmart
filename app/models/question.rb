class Question < ActiveRecord::Base

	belongs_to	:strategy
	belongs_to 	:category

	has_many	:prompts
	has_many	:responses

end